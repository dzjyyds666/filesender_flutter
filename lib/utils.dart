import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {
  static int theme = 1;

  // 判断设备类型为桌面端还是移动端
  static String getDeviceType() {
    if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
      return 'desktop';
    } else if (Platform.isAndroid || Platform.isIOS) {
      return 'mobile';
    } else {
      return 'unknown';
    }
  }

  //灰色分割区域
  static Widget GreyDivider(int height) {
    return Container(
      height: height.h,
      color: Mycolor.GreyBackgroundColor,
    );
  }
}

class LightTheme extends Mycolor{
  static Color PrimaryColor = Color(0xfff87ceeb); // 主题色
  static Color SecondaryColor = Color(0xfff98FB98); // 次主题色
  static Color BackgroundColor = Color(0xfffFFFFFF);
  static Color TextMianColor = Color(0xfff333333);
  static Color TextSecondaryColor = Color(0xfff888888);
  static Color borderColor = Color(0xfffE0F7FA);
  static Color ErrorColor = Color(0xfffFF6F61);
  static Color SuccessColor = Color(0xfff77DD77);
  static Color GreyBackgroundColor = Color(0xfffD5D6D7);
}

class Mycolor {
  static Color PrimaryColor = Color(0xfff87ceeb); // 主题色
  static Color SecondaryColor = Color(0xfff98FB98); // 次主题色
  static Color BackgroundColor = Color(0xfffFFFFFF);
  static Color TextMianColor = Color(0xfff333333);
  static Color TextSecondaryColor = Color(0xfff888888);
  static Color borderColor = Color(0xfffE0F7FA);
  static Color ErrorColor = Color(0xfffFF6F61);
  static Color SuccessColor = Color(0xfff77DD77);
  static Color GreyBackgroundColor = Color(0xfffD5D6D7);
}


