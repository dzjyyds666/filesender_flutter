import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/app_info.dart';
import '../utils.dart';

class SettingAbout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingAboutState();
}

class _SettingAboutState extends State<SettingAbout> {
  AppInfo appInfo = AppInfo();
  bool hasNewVersion = false;

  @override
  void initState() {
    super.initState();
    readSoftwareInfoFromFile();
  }


  // 初始化软件信息
  void readSoftwareInfoFromFile() async {
    // 读取软件信息
    String jsonStr = await rootBundle.loadString('assets/config/app_info.json');
    Map<String, dynamic> jsonMap = json.decode(jsonStr);
    debugPrint('${jsonMap}');
    setState(() {
      appInfo = AppInfo.fromJson(jsonMap);
    });
    debugPrint('${appInfo.appName}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.BackgroundColor,
      appBar: AppBar(
        title: Text(
          '关于',
          style: TextStyle(color: Mycolor.TextMianColor, fontSize: 20.sp),
        ),
        centerTitle: true,
        backgroundColor: Mycolor.BackgroundColor,
        iconTheme: IconThemeData(color: Mycolor.TextMianColor),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250.h,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    'assets/icon/app-icon.webp',
                    width: 100.w,
                    height: 100.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                border: Border.all(color: Mycolor.borderColor),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.w),
                    child: Text(
                      '软件名：${appInfo.appName}',
                      style: TextStyle(
                          fontSize: 16.sp, color: Mycolor.TextMianColor),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.w),
                    child: Text(
                      '版本号：${appInfo.appVersion}',
                      style: TextStyle(
                          fontSize: 16.sp, color: Mycolor.TextMianColor),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.w),
                    child: Text(
                      '开发者：${appInfo.developer}',
                      style: TextStyle(
                          fontSize: 16.sp, color: Mycolor.TextMianColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            hasNewVersion
                ? GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Mycolor.PrimaryColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      width: double.infinity,
                      height: 60.h,
                      child: Center(
                        child: Text(
                          '下载新版本',
                          style: TextStyle(
                              fontSize: 16.sp, color: Mycolor.TextMianColor),
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      // todo 联网检查更新
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Mycolor.SecondaryColor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      width: double.infinity,
                      height: 60.h,
                      child: Center(
                        child: Text(
                          '检查更新',
                          style: TextStyle(
                              fontSize: 16.sp, color: Mycolor.TextMianColor),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
