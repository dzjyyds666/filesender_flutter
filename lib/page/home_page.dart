import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:file_sender/utils.dart';
import 'package:file_sender/widget/device_found.dart';
import 'package:file_sender/widget/menu_list.dart';
import 'package:file_sender/widget/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  final Function(int theme,CustomTheme? customTheme) changeTheme;

  HomePage({super.key, required this.changeTheme});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectButtombar = 0;

  Widget getSelectPage() {
    if (selectButtombar == 0) {
      return DeviceFound();
    } else if (selectButtombar == 1) {
      return MenuList();
    } else if (selectButtombar == 2) {
      return SettingPage(
        changeTheme: widget.changeTheme,
      );
    } else {
      return DeviceFound();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolor.BackgroundColor,
      body: SafeArea(child: getSelectPage()),
      bottomNavigationBar: CurvedNavigationBar(
        color: Mycolor.PrimaryColor,
        backgroundColor: Mycolor.BackgroundColor,
        buttonBackgroundColor: Mycolor.SecondaryColor,
        animationDuration: Duration(milliseconds: 200),
        height: 60.h,
        items: <Widget>[
          Icon(
            Icons.home_filled,
            size: 20,
            color:
                selectButtombar == 0 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.list,
            size: 20,
            color:
                selectButtombar == 1 ? Colors.white : Colors.black,
          ),
          Icon(
            Icons.settings,
            size: 20,
            color:
                selectButtombar == 2 ? Colors.white : Colors.black,
          )
        ],
        onTap: (index) {
          setState(() {
            selectButtombar = index;
          });
        },
      ),
    );
  }
}
