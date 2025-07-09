import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'multiple_theme_extension.dart';

/// 主题数据定义
class MultipleThemeData {
  final String id;
  final String icon;
  final String description;
  final MultipleThemeExtension colors;
  final ThemeData themeData;
  final bool isDark;

  String get name {
    switch (id) {
      case 'system':
        return '跟随系统';
      case 'light':
        return '浅色模式';
      case 'dark':
        return '暗色模式';
      case 'green':
        return '绿色主题';
      case 'red':
        return '红色主题';
      case 'purple':
        return '紫色主题';
      default:
        return '';
    }
  }

  const MultipleThemeData({
    required this.id,
    required this.icon,
    required this.description,
    required this.colors,
    required this.themeData,
    required this.isDark,
  });
}

/// 主题管理器
class MultipleThemeManager {
  /// 所有可用的主题
  static final List<MultipleThemeData> availableThemes = [
    // 跟随系统
    MultipleThemeData(
      id: 'system',
      icon: 'assets/svg/color_theme_system.svg',
      description: '根据系统设置自动切换',
      colors: MultipleThemeExtension.dark,
      themeData: _createThemeData(MultipleThemeExtension.dark, true),
      isDark: false,
    ),

    // 浅色主题
    MultipleThemeData(
      id: 'light',
      icon: 'assets/svg/color_theme_light.svg',
      description: '适合在光线充足的环境下使用',
      colors: MultipleThemeExtension.light,
      themeData: _createThemeData(MultipleThemeExtension.light, false),
      isDark: false,
    ),

    // 暗色主题
    MultipleThemeData(
      id: 'dark',
      icon: 'assets/svg/color_theme_dark.svg',
      description: '适合在昏暗环境下使用，有助保护视力',
      colors: MultipleThemeExtension.dark,
      themeData: _createThemeData(MultipleThemeExtension.dark, true),
      isDark: true,
    ),

    // 绿色主题
    MultipleThemeData(
      id: 'green',
      icon: 'assets/svg/color_theme_dark.svg',
      description: '清新自然的绿色主题',
      colors: MultipleThemeExtension.green,
      themeData: _createThemeData(MultipleThemeExtension.green, false),
      isDark: false,
    ),

    // 红色主题
    MultipleThemeData(
      id: 'red',
      icon: 'assets/svg/color_theme_dark.svg',
      description: '热情活力的红色主题',
      colors: MultipleThemeExtension.red,
      themeData: _createThemeData(MultipleThemeExtension.red, false),
      isDark: false,
    ),

    // 紫色主题
    MultipleThemeData(
      id: 'purple',
      icon: 'assets/svg/color_theme_dark.svg',
      description: '神秘优雅的紫色主题',
      colors: MultipleThemeExtension.purple,
      themeData: _createThemeData(MultipleThemeExtension.purple, false),
      isDark: false,
    ),
  ];

  /// 根据 ID 获取主题
  static MultipleThemeData? getThemeById(String id) {
    try {
      return availableThemes.firstWhere((theme) => theme.id == id);
    } catch (e) {
      return null;
    }
  }

  /// 获取默认主题（浅色）
  static MultipleThemeData get defaultTheme => getThemeById('system')!;

  /// 获取系统主题（根据系统暗色模式设置）
  static MultipleThemeData getSystemTheme(bool isSystemDark) {
    // 根据系统模式返回对应的主题：深色模式返回dark主题，浅色模式返回light主题
    return isSystemDark ? getThemeById('dark')! : getThemeById('light')!;
  }

  /// 创建 ThemeData
  static ThemeData _createThemeData(MultipleThemeExtension colors, bool isDark) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      extensions: [colors],
      appBarTheme: AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: colors.brand02White,
        titleTextStyle: TextStyle(
          color: colors.brand01Black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colors.brand03Blue,
        selectionColor: colors.otherDocCheck,
        selectionHandleColor: colors.brand03Blue,
      ),
      useMaterial3: false,
    );
  }

  /// 添加新主题（用于未来扩展）
  static void addTheme(MultipleThemeData theme) {
    if (!availableThemes.any((t) => t.id == theme.id)) {
      availableThemes.add(theme);
    }
  }

  /// 创建自定义主题的辅助方法
  static MultipleThemeData createCustomTheme({
    required String id,
    required String name,
    required String icon,
    required String description,
    required MultipleThemeExtension colors,
    required bool isDark,
  }) {
    return MultipleThemeData(
      id: id,
      icon: icon,
      description: description,
      colors: colors,
      themeData: _createThemeData(colors, isDark),
      isDark: isDark,
    );
  }
}

/// 主题类型枚举
enum MultipleThemeType {
  light('light', '明亮模式'),
  dark('dark', '深色模式'),
  system('system', '跟随系统');

  const MultipleThemeType(this.id, this.displayName);

  final String id;
  final String displayName;

  /// 从 ID 获取主题类型
  static MultipleThemeType fromId(String id) {
    for (var type in MultipleThemeType.values) {
      if (type.id == id) {
        return type;
      }
    }
    return MultipleThemeType.system;
  }
}
