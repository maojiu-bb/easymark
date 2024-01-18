import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 间距
class AppSpace {
  /// 按钮
  static double get button => 5.w;

  /// 按钮
  static double get buttonHeight => 50.w;

  /// 卡片内 - 12 上下左右
  static double get card => 15.w;

  /// 输入框 - 10, 10 上下，左右
  static EdgeInsetsGeometry get edgeInput =>
      EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w);

  /// 列表视图
  static double get listView => 5.w;

  /// 列表行 - 10 上下
  static double get listRow => 10.w;

  /// 列表项
  static double get listItem => 8.w;

  /// 页面内 - 16 左右
  static double get page => 16.w;

  /// 段落 - 24
  static double get paragraph => 24.w;

  /// 标题内容 - 10
  static double get titleContent => 10.w;

  /// 图标文字 - 15
  static double get iconTextSmail => 5.w;
  static double get iconTextMedium => 10.w;
  static double get iconTextLarge => 15.w;
}
