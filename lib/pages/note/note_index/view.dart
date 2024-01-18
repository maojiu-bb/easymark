import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class NoteIndexPage extends GetView<NoteIndexController> {
  const NoteIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("NoteIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NoteIndexController>(
      init: NoteIndexController(),
      id: "note_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("note_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
