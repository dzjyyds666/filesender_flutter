import 'dart:io';
import 'dart:ui';

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
}

class Mycolor {
  static const Color PrimaryColor = Color(0xfff87ceeb); // 主题色
  static const Color SecondaryColor = Color(0xfff98FB98); // 次主题色
  static const Color BackgroundColor = Color(0xfffFFFFFF);
  static const Color TextMianColor = Color(0xfff333333);
  static const Color TextSecondaryColor = Color(0xfff888888);
  static const Color borderColor = Color(0xfffE0F7FA);
  static const Color ErrorColor = Color(0xfffFF6F61);
  static const Color SuccessColor = Color(0xfff77DD77);
}
