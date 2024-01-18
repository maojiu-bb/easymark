import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SettingIndexPage extends GetView<SettingIndexController> {
  const SettingIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("SettingIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingIndexController>(
      init: SettingIndexController(),
      id: "setting_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("setting_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
