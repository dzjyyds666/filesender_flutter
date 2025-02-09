import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils.dart';

class MenuList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('正在建设中....',style: TextStyle(fontSize: 20.sp,color: Mycolor.TextMianColor),),
      ),
    );
  }
}
