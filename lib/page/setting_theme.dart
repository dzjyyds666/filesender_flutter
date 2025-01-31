import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils.dart';

class SettingTheme extends StatefulWidget {
  final Function(int theme, CustomTheme? customTheme) changeTheme;

  SettingTheme({super.key, required this.changeTheme});

  @override
  State<StatefulWidget> createState() => _SettingThemeState();
}

class _SettingThemeState extends State<SettingTheme> {
  CustomTheme customTheme = CustomTheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.BackgroundColor,
      appBar: AppBar(
        title: Text(
          '设置主题',
          style: TextStyle(color: Mycolor.TextMianColor, fontSize: 20.sp),
        ),
        centerTitle: true,
        backgroundColor: Mycolor.BackgroundColor,
        iconTheme: IconThemeData(color: Mycolor.TextMianColor),
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 20.w, bottom: 20.h, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                '预设主题',
                style: TextStyle(
                    fontSize: 12.sp, color: Mycolor.TextSecondaryColor),
              ),
              Utils.GreyDivider(1),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: ()async {
                    widget.changeTheme(1, null);
                    // 写入缓存
                    await Prefs.instance.prefs.setString("theme", "1");
                  },
                  child: SizedBox(
                    height: 60.h,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Light Mod',
                        style: TextStyle(
                            fontSize: 16.sp, color: Mycolor.TextMianColor),
                      ),
                    ),
                  )),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: ()async {
                    widget.changeTheme(2, null);
                    await Prefs.instance.prefs.setString("theme", "2");
                  },
                  child: SizedBox(
                    height: 60.h,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Dark Mod',
                        style: TextStyle(
                            fontSize: 16.sp, color: Mycolor.TextMianColor),
                      ),
                    ),
                  )),
              Text(
                '自定义主题',
                style: TextStyle(
                    fontSize: 12.sp, color: Mycolor.TextSecondaryColor),
              ),
              Utils.GreyDivider(1),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    changeCustomTheme('PrimaryColor', customTheme.PrimaryColor ?? Mycolor.PrimaryColor,
                        (Color color) {
                      setState(() {
                        customTheme.PrimaryColor = color;
                      });
                    }),
                    changeCustomTheme(
                        'SecondaryColor', customTheme.SecondaryColor ?? Mycolor.SecondaryColor,
                        (Color color) {
                      setState(() {
                        customTheme.SecondaryColor = color;
                      });
                    }),
                    changeCustomTheme(
                        'BackgroundColor', customTheme.BackgroundColor ?? Mycolor.BackgroundColor,
                        (Color color) {
                      setState(() {
                        customTheme.BackgroundColor = color;
                      });
                    }),
                    changeCustomTheme('BackgroundColorInverse',
                        customTheme.BackgroundColorInverse ?? Mycolor.BackgroundColorInverse, (Color color) {
                      setState(() {
                        customTheme.BackgroundColorInverse = color;
                      });
                    }),
                    changeCustomTheme(
                        'TextMianColor', customTheme.TextMianColor ?? Mycolor.TextMianColor,
                        (Color color) {
                      setState(() {
                        customTheme.TextMianColor = color;
                      });
                    }),
                    changeCustomTheme(
                        'TextSecondaryColor', customTheme.TextSecondaryColor ?? Mycolor.TextSecondaryColor,
                        (Color color) {
                      setState(() {
                        customTheme.TextSecondaryColor = color;
                      });
                    }),
                    changeCustomTheme('borderColor', customTheme.borderColor ?? Mycolor.borderColor,
                        (Color color) {
                      setState(() {
                        customTheme.borderColor = color;
                      });
                    }),
                    changeCustomTheme('SuccessColor', customTheme.SuccessColor ?? Mycolor.SuccessColor,
                        (Color color) {
                      setState(() {
                        customTheme.SuccessColor = color;
                      });
                    }),
                    changeCustomTheme('ErrorColor', customTheme.ErrorColor ?? Mycolor.ErrorColor,
                        (Color color) {
                      setState(() {
                        customTheme.ErrorColor = color;
                      });
                    }),
                    changeCustomTheme(
                        'GreyBackgroundColor', customTheme.GreyBackgroundColor ?? Mycolor.GreyBackgroundColor,
                        (Color color) {
                      setState(() {
                        customTheme.GreyBackgroundColor = color;
                      });
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Mycolor.SecondaryColor,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: Text(
                                '导入主题',
                                style: TextStyle(
                                    color: Mycolor.TextMianColor,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        GestureDetector(
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Mycolor.SecondaryColor,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: Text(
                                '导出主题',
                                style: TextStyle(
                                    color: Mycolor.TextMianColor,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async{
                            widget.changeTheme(3,customTheme);
                            await Prefs.instance.prefs.setString('theme', "3");
                          },
                          child: Container(
                            width: 100.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Mycolor.PrimaryColor,
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Center(
                              child: Text(
                                '应用主题',
                                style: TextStyle(
                                    color: Mycolor.TextMianColor,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          )),
    );
  }

  Widget changeCustomTheme(
      String title, Color color, Function(Color color) changeColor) {
    return Container(
      height: 60.h,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Mycolor.TextMianColor, fontSize: 16.sp),
          ),
          Spacer(),
          GestureDetector(
            child: Container(
              width: 60.w,
              height: 25.h,
              decoration: BoxDecoration(
                color: color ?? Colors.white,
                border: Border.all(color: Mycolor.borderColor),
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: ColorPicker(
                            pickerColor: color ?? Colors.white,
                            onColorChanged: (newColor) {
                              changeColor(newColor);
                            }),
                      ),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
