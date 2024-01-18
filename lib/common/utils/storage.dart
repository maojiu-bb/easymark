import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// kv 离线存储
/// key value
class Storage {
  static final Storage _instance = Storage._internal();
  factory Storage() => _instance;
  Storage._internal();

  late final SharedPreferences _preferences;

  // 初始化
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // 存 json
  Future<bool> setJson(String key, Object value) async {
    return await _preferences.setString(key, jsonEncode(value));
  }

  // 存 string
  Future<bool> setString(String key, String value) async {
    return await _preferences.setString(key, value);
  }

  // 存 bool
  Future<bool> setBool(String key, bool value) async {
    return await _preferences.setBool(key, value);
  }

  // 存 List
  Future<bool> setList(String key, List<String> value) async {
    return await _preferences.setStringList(key, value);
  }

  // 获取 string
  String getString(String key) {
    return _preferences.getString(key) ?? '';
  }

  // 获取 json
  dynamic getJson(String key) {
    return jsonDecode(_preferences.getString(key) ?? '{}');
  }

  // 获取 bool
  bool getBool(String key) {
    return _preferences.getBool(key) ?? false;
  }

  // 获取 List
  List<String> getList(String key) {
    return _preferences.getStringList(key) ?? [];
  }

  // 移除
  Future<bool> remove(String key) async {
    return await _preferences.remove(key);
  }
}
