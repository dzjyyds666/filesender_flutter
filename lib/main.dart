import 'dart:ui';

import 'package:file_sender/page/home_page.dart';
import 'package:file_sender/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 初始化屏幕适配
  String deviceType = Utils.getDeviceType();
  if (deviceType == 'desktop') {
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = WindowOptions(
      size: Size(375, 812),
    );

    await windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
      await windowManager.setResizable(false); // 禁止调整窗口大小
    });
  }

  await Prefs.init();
  String? themeStr = await Prefs.instance.prefs.getString("theme");
  int? theme = int.tryParse(themeStr ?? "1");
  if (theme == null) {
    theme = 1;
  } else if (theme == 3) {
    //todo 从文件中读取主题配置文件
  }

  runApp(myApp(
    theme: theme,
  ));
}

class myApp extends StatefulWidget {
  final int theme;
  final CustomTheme? customTheme;

  myApp({super.key, required this.theme, this.customTheme});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  late int theme;
  CustomTheme? customTheme;

  void initTheme() {
    if (theme == 1) {
      Utils.changeThemeToLight();
    } else if (theme == 2) {
      Utils.changeThemeToDark();
    } else if (theme == 3) {
      Utils.changeThemeToCustom(customTheme!);
    }
  }

  @override
  void initState() {
    super.initState();
    theme = widget.theme;
    initTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: '文件传输助手',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: HomePage(
              changeTheme: changeTheme,
            ));
      },
    );
  }

  void changeTheme(int newTheme, CustomTheme? newCustomTheme) {
    if (newTheme == 3) {
      if (newCustomTheme != null) {
        customTheme = newCustomTheme;
      } else {
        // 默认为light模式
        newTheme = 1;
      }
    }
    setState(() {
      theme = newTheme;
      debugPrint("changeTheme$theme");
      initTheme();
    });
  }
}
