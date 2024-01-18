import 'package:get/get.dart';

class NoteIndexController extends GetxController {
  NoteIndexController();

  _initData() {
    update(["note_index"]);
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
