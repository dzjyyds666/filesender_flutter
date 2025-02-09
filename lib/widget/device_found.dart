import 'dart:ffi';

import 'package:file_sender/rpc/client/client.dart';
import 'package:file_sender/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fixnum/fixnum.dart';
import '../rpc/protos/device_found_server.pb.dart';

class DeviceFound extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeviceFoundState();
}

class _DeviceFoundState extends State<DeviceFound> {
  bool isPressed = false;

  late List<Widget> actions;

  @override
  void initState() {
    super.initState();
    getActions();
  }

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
              for (var action in actions) action
            ],
          ),
        ),
        Expanded(
            child: Center(
          child: isPressed == false
              ? PulsingButton(
                  searchDevice: searchDevice,
                )
              : DeviceList(),
        ))
      ],
    );
  }

  void searchDevice() async {
    // 调用grpc服务
    StartDeviceFoundResponse response = await GrpcClient.client
        .startDeviceFoundServer(StartDeviceFoundRequest(
            port: Int64(50000), sendPort: Int64(50005)));

    if (response.success) {
      setState(() {
        isPressed = true;
        getActions();
      });
    } else {
      setState(() {
        isPressed = false;
        getActions();
      });
    }
  }

  get scanIcon => GestureDetector(
        onTap: () {
          // todo 调用相机进行扫码
        },
        child: Icon(
          Icons.camera_alt_outlined,
          size: 20,
          color: Mycolor.TextMianColor,
        ),
      );

  get searchIcon => GestureDetector(
        onTap: () {
          // todo 对检测出来的设备进行搜索
        },
        child: Icon(
          Icons.search,
          size: 20,
          color: Mycolor.TextMianColor,
        ),
      );

  get refreshIcon => GestureDetector(
        onTap: () {
          // todo 刷新列表
        },
        child: Icon(
          Icons.refresh,
          size: 20,
          color: Mycolor.TextMianColor,
        ),
      );

  get resetIcon => GestureDetector(
        onTap: () {
          setState(() {
            isPressed = false;
            getActions();
          });
        },
        child: Icon(
          Icons.logout,
          size: 20,
          color: Mycolor.TextMianColor,
        ),
      );

  void getActions() {
    if (isPressed == false) {
      setState(() {
        actions = [scanIcon];
      });
    } else {
      setState(() {
        actions = [
          searchIcon,
          SizedBox(
            width: 10.w,
          ),
          refreshIcon,
          SizedBox(
            width: 10.w,
          ),
          resetIcon
        ];
      });
    }
  }
}

class DeviceList extends StatefulWidget {
  const DeviceList({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _DeviceListState();
}

class _DeviceListState extends State<DeviceList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.w, bottom: 20.h),
              child: Text(
                "设备列表",
                style: TextStyle(fontSize: 20.sp, color: Mycolor.TextMianColor),
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Mycolor.GreyBackgroundColor),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 375.w,
                      height: 100.h,
                      decoration: BoxDecoration(color: Mycolor.BackgroundColor),
                      margin: EdgeInsets.only(top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 235.w,
                            height: 100.h,
                            decoration:
                                BoxDecoration(color: Mycolor.BackgroundColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'device_name',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Mycolor.TextMianColor),
                                ),
                                Text(
                                  'device_ip',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Mycolor.TextSecondaryColor),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              '连接',
                              style: TextStyle(
                                  color: Mycolor.PrimaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.more_vert,
                              size: 16.sp,
                              color: Mycolor.TextMianColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ))
          ],
        ));
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
    return Container(
      child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
                scale: _animation.value,
                child: GestureDetector(
                  child: Container(
                    width: 100.w,
                    height: 100.w,
                    decoration: BoxDecoration(
                        color: Mycolor.SecondaryColor,
                        borderRadius: BorderRadius.circular(50.w)),
                    child: Center(
                      child: Text(
                        '搜索',
                        style: TextStyle(
                            color: isPressed
                                ? Mycolor.TextSecondaryColor
                                : Mycolor.TextMianColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  onTap: () {
                    widget.searchDevice();
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
                ));
          }),
      decoration: BoxDecoration(
        color: Mycolor.BackgroundColor,
      ),
    );
  }
}
