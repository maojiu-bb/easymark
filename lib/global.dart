import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easymark/common/index.dart';

class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // 配置离线存储
    await Storage().init();

    /// 注入全局config service
    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});
  }
}
