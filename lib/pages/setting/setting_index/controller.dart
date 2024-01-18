import 'package:get/get.dart';

class SettingIndexController extends GetxController {
  SettingIndexController();

  _initData() {
    update(["setting_index"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
