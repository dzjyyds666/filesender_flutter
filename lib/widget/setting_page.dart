import 'package:file_sender/page/setting_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils.dart';

class SettingPage extends StatefulWidget {
  final Function(int theme, CustomTheme? customTheme) changeTheme;

  SettingPage({required this.changeTheme, super.key});

  @override
  State<StatefulWidget> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolor.BackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
              child: Text(
                '设置',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Mycolor.TextMianColor),
              )),
          Utils.GreyDivider(10),
          settingsItem("系统设置", Icons.arrow_right, () {}),
          Utils.GreyDivider(1),
          settingsItem("外观设置", Icons.arrow_right, () {
            // 设置主题切换
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SettingTheme(changeTheme: widget.changeTheme)));
          }),
          Utils.GreyDivider(1),
          settingsItem("关于", Icons.arrow_right, () {}),
        ],
      ),
    );
  }

  Widget settingsItem(String title, IconData icon, Function() onTap) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h, right: 20.w),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(color: Mycolor.TextMianColor, fontSize: 16.sp),
            ),
            Spacer(),
            Icon(
              icon,
              size: 16.sp,
              color: Mycolor.TextMianColor,
            ),
          ],
        ),
      ),
    );
  }
}
