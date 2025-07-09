import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../tools/log_util.dart';
import 'multiple_theme_data.dart';

class MultipleThemeService extends GetxController {
  static const String _logTag = 'MultipleThemeService';
  static const String _themeKey = 'theme_id';
  static const String systemThemeId = 'system';

  late final SharedPreferences _storage;

  /// 当前主题响应式变量
  final Rx<MultipleThemeData> _currentTheme = MultipleThemeManager.defaultTheme.obs;

  /// 是否跟随系统主题, 默认为 true
  final RxBool _followSystem = true.obs;

  /// 缓存上一次的系统模式状态，用于检测变化
  bool? _lastSystemDarkMode;

  /// 获取当前主题（考虑跟随系统的情况）
  MultipleThemeData get currentTheme => effectiveTheme;

  /// 获取当前主题的 ThemeData
  ThemeData get themeData => effectiveTheme.themeData;

  /// 是否跟随系统主题
  bool get followSystem => _followSystem.value;

  /// 是否为暗黑模式（实际显示）
  bool get isDarkMode {
    if (_followSystem.value) {
      return Get.isPlatformDarkMode;
    }
    return _currentTheme.value.isDark;
  }

  /// 获取实际显示的主题（考虑跟随系统的情况）
  MultipleThemeData get effectiveTheme {
    if (_followSystem.value) {
      return MultipleThemeManager.getSystemTheme(Get.isPlatformDarkMode);
    }
    return _currentTheme.value;
  }

  /// 监听主题变化
  Rx<MultipleThemeData> get currentThemeObs => _currentTheme;
  Rx<bool> get followSystemObs => _followSystem;

  @override
  Future<void> onInit() async {
    super.onInit();
    _storage = await SharedPreferences.getInstance();
    await _loadThemeFromStorage();
    // 初始化系统模式缓存
    _lastSystemDarkMode = Get.isPlatformDarkMode;
    // 初始化时设置正确的状态栏样式
    _updateSystemUIOverlayStyle(isDarkMode);
  }

  /// 从本地存储加载主题设置
  Future<void> _loadThemeFromStorage() async {
    // 加载主题 ID
    final themeId = _storage.getString(_themeKey);
    if (themeId != null) {
      if (themeId == systemThemeId) {
        // 如果存储的是系统主题ID，则设置为跟随系统
        _followSystem.value = true;
        // 设置跟随系统时，同时更新_currentTheme为当前系统对应的主题
        final systemTheme = MultipleThemeManager.getSystemTheme(Get.isPlatformDarkMode);
        _currentTheme.value = systemTheme;
      } else {
        // 如果存储的是具体主题ID，则尝试获取该主题
        final theme = MultipleThemeManager.getThemeById(themeId);
        if (theme != null) {
          _currentTheme.value = theme;
          _followSystem.value = false;
        }
        // 如果主题不存在，保持默认状态（_followSystem.value = false, _currentTheme = defaultTheme）
      }
    }
    // 如果没有存储的主题ID，保持默认状态
  }

  /// 设置主题
  Future<void> setTheme(String themeId) async {
    // 判断是否与当前状态一致，如果一致则直接返回
    if (themeId == systemThemeId && _followSystem.value) {
      ALog.debug(_logTag, '当前已是跟随系统主题，无需切换');
      return;
    } else if (themeId != systemThemeId && !_followSystem.value && _currentTheme.value.id == themeId) {
      ALog.debug(_logTag, '当前已是 ${_currentTheme.value.name} 主题，无需切换');
      return;
    }

    // 获取当前实际显示状态
    final oldDarkMode = isDarkMode;
    final oldTheme = effectiveTheme;
    final oldFollowSystem = _followSystem.value;

    if (themeId == systemThemeId) {
      // 跟随系统
      _followSystem.value = true;
      // 同时更新_currentTheme为当前系统对应的主题
      final systemTheme = MultipleThemeManager.getSystemTheme(Get.isPlatformDarkMode);
      _currentTheme.value = systemTheme;
      ALog.debug(_logTag, '主题切换: ${oldTheme.name} -> 跟随系统(${systemTheme.name})');
    } else {
      // 设置具体主题
      final newTheme = MultipleThemeManager.getThemeById(themeId);
      if (newTheme == null) {
        ALog.error(_logTag, '主题不存在: $themeId');
        return;
      }

      _followSystem.value = false;
      _currentTheme.value = newTheme;
      if (oldFollowSystem) {
        ALog.debug(_logTag, '主题切换: 跟随系统(${oldTheme.name}) -> ${newTheme.name}');
      } else {
        ALog.debug(_logTag, '主题切换: ${oldTheme.name} -> ${newTheme.name}');
      }
    }

    // 计算新的显示状态和主题
    final newDarkMode = isDarkMode;
    final newTheme = effectiveTheme;
    ALog.debug(_logTag, '显示状态: ${oldDarkMode ? '深色' : '浅色'} -> ${newDarkMode ? '深色' : '浅色'}');

    // 保存到本地存储
    await _storage.setString(_themeKey, themeId);

    // 更新系统模式缓存（如果切换到跟随系统模式）
    if (themeId == systemThemeId) {
      _lastSystemDarkMode = Get.isPlatformDarkMode;
    }

    // 检查是否需要刷新界面
    // 即使显示的主题相同，但跟随系统状态变化也需要刷新UI
    final darkModeChanged = oldDarkMode != newDarkMode;
    final themeChanged = oldTheme.id != newTheme.id;
    final followSystemChanged = oldFollowSystem != _followSystem.value;

    if (darkModeChanged || themeChanged || followSystemChanged) {
      if (darkModeChanged) {
        ALog.debug(_logTag, '显示状态发生变化，刷新界面');
      }
      if (themeChanged) {
        ALog.debug(_logTag, '主题发生变化，刷新界面');
      }
      if (followSystemChanged) {
        ALog.debug(_logTag, '跟随系统状态发生变化，刷新界面');
      }
      _updateSystemUIOverlayStyle(newDarkMode);
      Get.forceAppUpdate();
    } else {
      ALog.debug(_logTag, '显示状态和主题均未变化，无需刷新界面');
    }

    // 始终通知响应式变量的监听者（用于UI状态更新）
    _currentTheme.refresh();
    _followSystem.refresh();
  }

  /// 切换到跟随系统主题,针对用户打开app期间,去设置切换了模式,需要更新
  /// 这个方法主要用于在应用启动时或用户退到后台,切换系统主题后，刷新当前主题设置
  void resumeUpdateTheme() {
    // 首先判断当前是否跟随系统，如果不跟随系统则直接返回
    if (!_followSystem.value) {
      ALog.debug(_logTag, '当前不跟随系统主题，无需更新');
      return;
    }

    final currentSystemDarkMode = Get.isPlatformDarkMode;

    ALog.debug(_logTag, '系统当前模式: ${currentSystemDarkMode ? '深色模式' : '浅色模式'}');
    ALog.debug(_logTag, '上次系统模式: ${_lastSystemDarkMode != null ? (_lastSystemDarkMode! ? '深色模式' : '浅色模式') : '未知'}');
    ALog.debug(_logTag, '应用当前主题: ${_currentTheme.value.name}');

    // 检查系统模式是否发生变化
    if (_lastSystemDarkMode != null && _lastSystemDarkMode == currentSystemDarkMode) {
      ALog.debug(_logTag, '系统模式未变化，无需更新');
      return;
    }

    // 根据系统颜色模式获取对应的实际主题
    final targetTheme = MultipleThemeManager.getSystemTheme(currentSystemDarkMode);
    final oldTheme = _currentTheme.value;

    ALog.debug(_logTag, '跟随系统：从 ${oldTheme.name} 切换到 ${targetTheme.name}');

    // 检查主题是否需要变化
    if (oldTheme.id != targetTheme.id) {
      ALog.debug(_logTag, '检测到系统模式变化，更新主题');
      _currentTheme.value = targetTheme;
      _updateSystemUIOverlayStyle(currentSystemDarkMode);
      Get.forceAppUpdate();
      // 通知响应式变量的监听者
      _currentTheme.refresh();
      _followSystem.refresh();
    } else {
      ALog.debug(_logTag, '主题无需变化');
    }

    // 更新缓存的系统模式
    _lastSystemDarkMode = currentSystemDarkMode;
  }

  /// 获取所有可用主题
  List<MultipleThemeData> get availableThemes => MultipleThemeManager.availableThemes;

  /// 判断某个主题是否被选中
  bool isThemeSelected(MultipleThemeData theme) {
    if (theme.id == systemThemeId) {
      // 跟随系统主题的判断
      return _followSystem.value;
    } else {
      // 具体主题的判断
      return !_followSystem.value && _currentTheme.value.id == theme.id;
    }
  }

  /// 更新系统状态栏样式
  /// [isDarkMode] 是否为暗黑模式
  void _updateSystemUIOverlayStyle(bool isDarkMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: isDarkMode ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}
