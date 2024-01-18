import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easymark/common/index.dart';
import 'package:easymark/pages/index.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.folderFolderIndex,
      page: () => const FolderIndexPage(),
    ),
    GetPage(
      name: RouteNames.noteNoteIndex,
      page: () => const NoteIndexPage(),
    ),
    GetPage(
      name: RouteNames.settingSettingIndex,
      page: () => const SettingIndexPage(),
    ),
    GetPage(
      name: RouteNames.startHome,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteNames.systemLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteNames.systemMain,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteNames.systemRegister,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.systemWelcome,
      page: () => const WelcomePage(),
    ),
    GetPage(
      name: RouteNames.userUserIndex,
      page: () => const UserIndexPage(),
    ),
  ];
}
