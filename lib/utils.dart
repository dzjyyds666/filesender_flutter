import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
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

  static void changeThemeToDark() {
    Mycolor.PrimaryColor = DarkTheme.PrimaryColor;
    Mycolor.SecondaryColor = DarkTheme.SecondaryColor;
    Mycolor.BackgroundColor = DarkTheme.BackgroundColor;
    Mycolor.TextMianColor = DarkTheme.TextMianColor;
    Mycolor.TextSecondaryColor = DarkTheme.TextSecondaryColor;
    Mycolor.borderColor = DarkTheme.borderColor;
    Mycolor.ErrorColor = DarkTheme.ErrorColor;
    Mycolor.SuccessColor = DarkTheme.SuccessColor;
    Mycolor.GreyBackgroundColor = DarkTheme.GreyBackgroundColor;
  }

  static void changeThemeToLight() {
    Mycolor.PrimaryColor = LightTheme.PrimaryColor;
    Mycolor.SecondaryColor = LightTheme.SecondaryColor;
    Mycolor.BackgroundColor = LightTheme.BackgroundColor;
    Mycolor.TextMianColor = LightTheme.TextMianColor;
    Mycolor.TextSecondaryColor = LightTheme.TextSecondaryColor;
    Mycolor.borderColor = LightTheme.borderColor;
    Mycolor.ErrorColor = LightTheme.ErrorColor;
    Mycolor.SuccessColor = DarkTheme.SuccessColor;
    Mycolor.GreyBackgroundColor = DarkTheme.GreyBackgroundColor;
  }

  static void changeThemeToCustom(CustomTheme customTheme) {
    Mycolor.PrimaryColor = customTheme.PrimaryColor!;
    Mycolor.SecondaryColor = customTheme.SecondaryColor!;
    Mycolor.BackgroundColor = customTheme.BackgroundColor!;
    Mycolor.TextMianColor = customTheme.TextMianColor!;
    Mycolor.TextSecondaryColor = customTheme.TextSecondaryColor!;
    Mycolor.borderColor = customTheme.borderColor!;
    Mycolor.ErrorColor = customTheme.ErrorColor!;
    Mycolor.SuccessColor = DarkTheme.SuccessColor!;
    Mycolor.GreyBackgroundColor = DarkTheme.GreyBackgroundColor!;
  }
}

class Prefs {
  static final Prefs instance = Prefs._internal();
  late SharedPreferences _prefs;

  Prefs._internal();

  static Future<void> init() async {
    instance._prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get prefs => _prefs;
}

class Mycolor {
  static Color PrimaryColor = Color(0xFF2196F3); // 鲜艳的亮蓝色，给人清爽、活力的感觉
  static Color SecondaryColor = Color(0xFFFFC107); // 亮黄色，增加温暖和活力感
  static Color BackgroundColor = Color(0xFFFFFFFF); // 纯白色背景，增强明亮感
  static Color BackgroundColorInverse = Color(0xFF000000);
  static Color TextMianColor = Color(0xFF212121); // 深灰色，比纯黑色柔和但仍然清晰
  static Color TextSecondaryColor = Color(0xFF616161); // 较浅的灰色，适合作为次级文本色
  static Color borderColor = Color(0xFFB3E5FC); // 浅蓝色边框，柔和但不会显得沉闷
  static Color ErrorColor = Color(0xFFE53935); // 明亮的红色，警示性强但不过分刺眼
  static Color SuccessColor = Color(0xFF00C853); // 鲜亮的绿色，象征活力和成功
  static Color GreyBackgroundColor = Color(0xFFA1A1A1);
}

class LightTheme {
  static Color PrimaryColor = Color(0xFF2196F3); // 鲜艳的亮蓝色，给人清爽、活力的感觉
  static Color SecondaryColor = Color(0xFFFFC107); // 亮黄色，增加温暖和活力感
  static Color BackgroundColor = Color(0xFFFFFFFF); // 纯白色背景，增强明亮感
  static Color BackgroundColorInverse = Color(0xFF000000);
  static Color TextMianColor = Color(0xFF212121); // 深灰色，比纯黑色柔和但仍然清晰
  static Color TextSecondaryColor = Color(0xFF616161); // 较浅的灰色，适合作为次级文本色
  static Color borderColor = Color(0xFFB3E5FC); // 浅蓝色边框，柔和但不会显得沉闷
  static Color ErrorColor = Color(0xFFE53935); // 明亮的红色，警示性强但不过分刺眼
  static Color SuccessColor = Color(0xFF00C853); // 鲜亮的绿色，象征活力和成功
  static Color GreyBackgroundColor = Color(0xFFA1A1A1);
}

class DarkTheme {
  static Color PrimaryColor = Color(0xFF64B5F6); // 亮蓝色，增加活力
  static Color SecondaryColor = Color(0xFF81C784); // 柔和的绿色，增强舒适感
  static Color BackgroundColor = Color(0xFF121212); // 典型的深色背景
  static Color BackgroundColorInverse = Color(0xFFffffff); // 深色背景的相反色，用于文本等
  static Color TextMianColor = Color(0xFFFFFFFF); // 主要文本使用纯白，提高对比度
  static Color TextSecondaryColor = Color(0xFFB0BEC5); // 浅灰蓝色，适合作为次要文本
  static Color borderColor = Color(0xFF37474F); // 深灰蓝色，适用于分割线
  static Color ErrorColor = Color(0xFFE57373); // 柔和的红色，警告但不过于刺眼
  static Color SuccessColor = Color(0xFF66BB6A); // 明亮的绿色，表现积极氛围
  static Color GreyBackgroundColor = Color(0xFFA1A1A1);
}

class CustomTheme {
  Color? PrimaryColor;
  Color? SecondaryColor;
  Color? BackgroundColor;
  // 背景颜色相反
  Color? BackgroundColorInverse;
  Color? TextMianColor;
  Color? TextSecondaryColor;
  Color? borderColor;
  Color? ErrorColor;
  Color? SuccessColor;
  Color? GreyBackgroundColor;

  CustomTheme({
    this.PrimaryColor,
    this.SecondaryColor,
    this.BackgroundColor,
    this.BackgroundColorInverse,
    this.TextMianColor,
    this.TextSecondaryColor,
    this.borderColor,
    this.ErrorColor,
    this.SuccessColor,
    this.GreyBackgroundColor,
  });

  factory CustomTheme.fromJson(Map<String, dynamic> json) {
    return CustomTheme(
      PrimaryColor: Color(json['PrimaryColor']),
      SecondaryColor: Color(json['SecondaryColor']),
      BackgroundColor: Color(json['BackgroundColor']),
      BackgroundColorInverse: Color(json['BackgroundColorInverse']),
      TextMianColor: Color(json['TextMianColor']),
      TextSecondaryColor: Color(json['TextSecondaryColor']),
      borderColor: Color(json['borderColor']),
      ErrorColor: Color(json['ErrorColor']),
      SuccessColor: Color(json['SuccessColor']),
      GreyBackgroundColor: Color(json['GreyBackgroundColor']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'PrimaryColor': PrimaryColor,
      'SecondaryColor': SecondaryColor,
      'BackgroundColor': BackgroundColor,
      'BackgroundColorInverse': BackgroundColorInverse,
      'TextMianColor': TextMianColor,
      'TextSecondaryColor': TextSecondaryColor,
      'borderColor': borderColor,
      'ErrorColor': ErrorColor,
      'SuccessColor': SuccessColor,
      'GreyBackgroundColor': GreyBackgroundColor,
    };
  }
}
