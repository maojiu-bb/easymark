import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easymark/common/index.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ConfigService extends GetxService {
  static ConfigService get to => Get.find();

  // 版本
  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';

  // 主题
  final RxBool _isDarkModel = Get.isDarkMode.obs;
  bool get isDarkModel => _isDarkModel.value;
  set isDarkModel(bool value) => _isDarkModel.value = value;

  // 主题是否跟随系统
  final RxBool _isFollowSystem =
      Storage().getBool(Constants.isFollowSystem).obs;
  get isFollowSystem => _isFollowSystem.value;
  set isFollowSystem(value) => _isFollowSystem.value = value;

  // 是否首次打开
  bool get isAreadyOpen => Storage().getBool(Constants.isAlreadyOpen);

  /// 标记已打开
  void setAlreadyOpen() => Storage().setBool(Constants.isAlreadyOpen, true);

  /// 初始化 theme
  void initTheme() {
    var stroageTheme = Storage().getString(Constants.storageTheme);
    isDarkModel = stroageTheme == "dark" ? true : false;
    Get.changeTheme(
      stroageTheme == 'dark' ? AppTheme.dark : AppTheme.light,
    );
    Get.changeThemeMode(
        stroageTheme == 'dark' ? ThemeMode.dark : ThemeMode.light);
  }

  /// 切换主题
  Future<void> switchTheme() async {
    isDarkModel = !isDarkModel;
    Get.changeTheme(
      isDarkModel == true ? AppTheme.dark : AppTheme.light,
    );
    Get.changeThemeMode(
      isDarkModel == true ? ThemeMode.dark : ThemeMode.light,
    );

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   Get.forceAppUpdate();
    // });
    Future.delayed(const Duration(milliseconds: 215), () {
      Get.forceAppUpdate();
    });

    await Storage().setString(
        Constants.storageTheme, isDarkModel == true ? "dark" : "light");
  }

  /// 获取版本号
  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  // 初始化
  Future<ConfigService> init() async {
    await getPlatform();
    initTheme();
    return this;
  }
}
