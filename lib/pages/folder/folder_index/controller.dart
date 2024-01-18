import 'package:get/get.dart';

class FolderIndexController extends GetxController {
  FolderIndexController();

  _initData() {
    update(["folder_index"]);
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
