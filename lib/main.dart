import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:easymark/common/index.dart';
import 'package:easymark/global.dart';

Future<void> main() async {
  await Global.init();
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> with WidgetsBindingObserver {
  late Brightness _currentBrightness;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // ignore: deprecated_member_use 暂时忽视废弃语法, deprecated_member_use
    _currentBrightness = WidgetsBinding.instance.window.platformBrightness;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateSystemBrightness();
  }

  void _updateSystemBrightness() {
    final brightness = MediaQuery.of(context).platformBrightness;
    if (_currentBrightness != brightness) {
      setState(() {
        _currentBrightness = brightness;
        // 在这里执行主题切换逻辑，根据 _currentBrightness 来判断当前主题模式并进行切换
        // ConfigService.to.switchTheme();
        ConfigService.to.isFollowSystem ? ConfigService.to.switchTheme() : null;
      });
    }
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    _updateSystemBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(820, 630),
      splitScreenMode: false,
      minTextAdapt: false,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'EasyMark',

          // hide debuge
          debugShowCheckedModeBanner: false,

          // 过渡动画
          defaultTransition: Transition.rightToLeft,

          // theme
          theme: AppTheme.light,

          // dark theme
          darkTheme: AppTheme.dark,

          // 跟随系统
          themeMode: ConfigService.to.isFollowSystem
              ? ThemeMode.system
              : (ConfigService.to.isDarkModel
                  ? ThemeMode.dark
                  : ThemeMode.light),

          // init router
          initialRoute: RouteNames.systemSplash,

          // pages
          getPages: RoutePages.list,

          // observer
          navigatorObservers: [RoutePages.observer],

          builder: (context, widget) {
            // 不随系统字体缩放比例
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        );
      },
    );
  }
}
