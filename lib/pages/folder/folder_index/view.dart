import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class FolderIndexPage extends GetView<FolderIndexController> {
  const FolderIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("FolderIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FolderIndexController>(
      init: FolderIndexController(),
      id: "folder_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("folder_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
