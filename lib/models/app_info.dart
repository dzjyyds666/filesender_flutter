class AppInfo{
  String? appName;
  String? appVersion;
  String? developer;
  String? developerUrl;
  String? appIcon;

  AppInfo({
    this.appName,
    this.appVersion,
    this.developer,
    this.appIcon,
    this.developerUrl,
  });

  factory AppInfo.fromJson(Map<String, dynamic> json) {
    return AppInfo(
      appName: json['appName'],
      appVersion: json['appVersion'],
      developer: json['developer'],
      appIcon: json['appIcon'],
      developerUrl: json['developerUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'appName': appName,
      'appVersion': appVersion,
      'developer': developer,
      'appIcon': appIcon,
      'developerUrl': developerUrl,
    };
  }
}