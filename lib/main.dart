import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'home_page.dart';
import 'theme/multiple_theme_service.dart';
import 'tools/navigator_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 初始化主题服务
    Get.put(MultipleThemeService(), permanent: true);

    return _buildThemedApp(
      builder: (themeData) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          navigatorKey: NavigatorProvider.navigatorKey,
          theme: themeData,
          home: _wrapWithSafeArea(
            child: const MyHomePage(),
          ),
        );
      },
    );
  }

  /// 构建主题化应用，通过回调提供主题数据
  /// [builder] 接收当前主题数据，返回应用Widget
  Widget _buildThemedApp({required Widget Function(ThemeData) builder}) {
    return GetBuilder<MultipleThemeService>(builder: (themeService) {
      // 配置系统UI样式
      _configureSystemUIOverlay(themeService.isDarkMode);

      // 回调方式提供主题数据
      return builder(themeService.effectiveTheme.themeData);
    });
  }

  /// 根据平台包装SafeArea
  Widget _wrapWithSafeArea({required Widget child}) {
    // Web平台不需要特殊的SafeArea处理
    if (kIsWeb) {
      return child;
    }

    // 在移动平台上检查是否为Android
    if (defaultTargetPlatform == TargetPlatform.android) {
      return SafeArea(
        top: false, // 保持状态栏透明效果
        bottom: true, // 避免内容被虚拟导航栏遮挡
        child: child,
      );
    }

    return child;
  }

  /// 配置系统UI覆盖层样式（状态栏、导航栏等）
  void _configureSystemUIOverlay(bool isDarkMode) {
    // Web平台不支持系统UI配置
    if (kIsWeb) {
      return;
    }

    // 只在Android平台配置系统UI
    if (defaultTargetPlatform == TargetPlatform.android) {
      // 设置边到边模式，内容延伸到系统栏下方
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      // 设置状态栏和导航栏透明
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
        systemNavigationBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ));
    }
  }
}
