import 'package:file_sender/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeviceFound extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeviceFoundState();
}

class _DeviceFoundState extends State<DeviceFound> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.w),
          child: Row(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 20,
              ),
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.camera_alt_outlined,
                size: 20,
              )
            ],
          ),
        ),
        Expanded(
            child: Center(
          child: PulsingButton(searchDevice: searchDevice,),
        ))
      ],
    );
  }

  void searchDevice() {
    print('searchDevice');
  }
}

class PulsingButton extends StatefulWidget {
  final void Function() searchDevice;

  const PulsingButton({super.key, required this.searchDevice});

  @override
  State<StatefulWidget> createState() => _PulsingButtonState();
}

class _PulsingButtonState extends State<PulsingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isPressed = false;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);

    _animation = Tween<double>(begin: 1.0, end: 1.2)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.scale(
              scale: _animation.value,
              child: GestureDetector(
                child: Container(
                  width: 100.w,
                  height: 100.w,
                  decoration: BoxDecoration(
                      color: isPressed ? Mycolor.SecondaryColor : Mycolor.PrimaryColor,
                      borderRadius: BorderRadius.circular(50.w)),
                  child: Center(
                    child: Text('搜索',style: TextStyle(color: isPressed ? Mycolor.TextSecondaryColor : Mycolor.TextMianColor,fontWeight: FontWeight.w900),),
                  ),
                ),
                onTap: () {
                  widget.searchDevice();
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
              ));
        });
  }
}
