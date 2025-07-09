import 'package:flutter/material.dart';
import 'package:flutter_multiple_themes/theme/multiple_theme_extension.dart';
import 'package:get/get.dart';

import 'multiple_theme_service.dart';
import '../tools/navigator_provider.dart';

// 注意：透明色请直接使用Colors.transparent。其它任何颜色，请保证同时提供暗黑版本
class ThemeColor {
  static MultipleThemeService? _themeServiceCache;

  /// 获取响应式的主题扩展
  /// 这个方法会响应主题变化，确保颜色能够正确更新
  static MultipleThemeExtension get _responsiveTheme {
    if (_themeServiceCache == null) {
      try {
        // 尝试查找并缓存 MultipleThemeService 实例
        _themeServiceCache = Get.find<MultipleThemeService>();
      } catch (e) {
        // 如果 MultipleThemeService 未找到，则回退到使用 context
        return NavigatorProvider.navigatorContext!.multipleTheme;
      }
    }
    // 如果 _MultipleThemeServiceCache 已成功填充，则使用它
    // MultipleThemeService 中的 effectiveTheme getter 将确保颜色是最新的
    return _themeServiceCache!.effectiveTheme.colors;
  }

  //main color
  static Color get docBlue => _responsiveTheme.docBlue;

  // Brand Colors
  static Color get brand01Black => _responsiveTheme.brand01Black;
  static Color get brand02White => _responsiveTheme.brand02White;
  static Color get brand03Blue => _responsiveTheme.brand03Blue;
  static Color get brand04Green => _responsiveTheme.brand04Green;
  static Color get brand05Magenta => _responsiveTheme.brand05Magenta;

  // Neutral Colors
  static Color get neutralGrey60 => _responsiveTheme.neutralGrey60;
  static Color get neutralGrey80 => _responsiveTheme.neutralGrey80;
  static Color get neutralGrey100 => _responsiveTheme.neutralGrey100;
  static Color get neutralGrey200 => _responsiveTheme.neutralGrey200;
  static Color get neutralGrey300 => _responsiveTheme.neutralGrey300;
  static Color get neutralGrey400 => _responsiveTheme.neutralGrey400;
  static Color get neutralGrey500 => _responsiveTheme.neutralGrey500;
  static Color get neutralGrey600 => _responsiveTheme.neutralGrey600;
  static Color get neutralGrey700 => _responsiveTheme.neutralGrey700;
  static Color get neutralGrey800 => _responsiveTheme.neutralGrey800;
  static Color get neutralGrey900 => _responsiveTheme.neutralGrey900;
  static Color get neutralGrey950 => _responsiveTheme.neutralGrey950;

  // Text & Icon Colors
  static Color get textIcon1 => _responsiveTheme.textIcon1;
  static Color get textIcon2 => _responsiveTheme.textIcon2;
  static Color get textIcon3 => _responsiveTheme.textIcon3;
  static Color get textIcon4 => _responsiveTheme.textIcon4;
  static Color get textIcon5 => _responsiveTheme.textIcon5;
  static Color get textIcon6 => _responsiveTheme.textIcon6;
  static Color get textIcon7 => _responsiveTheme.textIcon7;
  static Color get textIcon8 => _responsiveTheme.textIcon8;

  // Surface Colors
  static Color get surface1 => _responsiveTheme.surface1;
  static Color get surface2 => _responsiveTheme.surface2;
  static Color get surface3 => _responsiveTheme.surface3;
  static Color get surface4 => _responsiveTheme.surface4;
  static Color get surface5 => _responsiveTheme.surface5;

  static Color get surfaceFill3 => _responsiveTheme.surfaceFill3;

  // Fill Colors
  static Color get fill1 => _responsiveTheme.fill1;
  static Color get fill2 => _responsiveTheme.fill2;
  static Color get fill3Hover => _responsiveTheme.fill3Hover;
  static Color get fill4 => _responsiveTheme.fill4;
  static Color get fill5 => _responsiveTheme.fill5;
  static Color get fill6 => _responsiveTheme.fill6;
  static Color get fill7 => _responsiveTheme.fill7;
  static Color get fill7CoaCot => _responsiveTheme.fill7CoaCot;

  // Line Colors
  static Color get line1 => _responsiveTheme.line1;
  static Color get line2 => _responsiveTheme.line2;
  static Color get line3 => _responsiveTheme.line3;
  static Color get line4 => _responsiveTheme.line4;

  // Background Colors
  static Color get backgroundMain1 => _responsiveTheme.backgroundMain1;
  static Color get backgroundMain2 => _responsiveTheme.backgroundMain2;
  static Color get backgroundMain3 => _responsiveTheme.backgroundMain3;
  static Color get backgroundOverlay1 => _responsiveTheme.backgroundOverlay1;
  static Color get backgroundOverlay2Tooltip => _responsiveTheme.backgroundOverlay2Tooltip;

  // Input Field Colors
  static Color get inputFieldBgDefault => _responsiveTheme.inputFieldBgDefault;
  static Color get inputFieldBgFilledHover => _responsiveTheme.inputFieldBgFilledHover;
  static Color get inputFieldBgDisable => _responsiveTheme.inputFieldBgDisable;
  static Color get inputFieldBgError => _responsiveTheme.inputFieldBgError;
  static Color get inputFieldStrokeDefault => _responsiveTheme.inputFieldStrokeDefault;
  static Color get inputFieldStrokeFilledHover => _responsiveTheme.inputFieldStrokeFilledHover;
  static Color get inputFieldStrokeDisable => _responsiveTheme.inputFieldStrokeDisable;
  static Color get inputFieldStrokeError => _responsiveTheme.inputFieldStrokeError;
  static Color get inputFieldStrokeDisableCheck => _responsiveTheme.inputFieldStrokeDisableCheck;

  static Color get otherDocCheck => _responsiveTheme.otherDocCheck;

  // Scene Colors
  static Color get scenePopoverBg => _responsiveTheme.scenePopoverBg;
  static Color get scenePopoverHover => _responsiveTheme.scenePopoverHover;

  // Grey Scale
  static Color get grey60 => _responsiveTheme.grey60;
  static Color get grey80 => _responsiveTheme.grey80;
  static Color get grey100 => _responsiveTheme.grey100;
  static Color get grey200 => _responsiveTheme.grey200;
  static Color get grey300 => _responsiveTheme.grey300;
  static Color get grey400 => _responsiveTheme.grey400;
  static Color get grey500 => _responsiveTheme.grey500;
  static Color get grey600 => _responsiveTheme.grey600;
  static Color get grey700 => _responsiveTheme.grey700;
  static Color get grey800 => _responsiveTheme.grey800;
  static Color get grey900 => _responsiveTheme.grey900;
  static Color get grey950 => _responsiveTheme.grey950;

  // Red Scale
  static Color get red50 => _responsiveTheme.red50;
  static Color get red100 => _responsiveTheme.red100;
  static Color get red200 => _responsiveTheme.red200;
  static Color get red300 => _responsiveTheme.red300;
  static Color get red400 => _responsiveTheme.red400;
  static Color get red500 => _responsiveTheme.red500;
  static Color get red600 => _responsiveTheme.red600;

  // Yellow Scale
  static Color get yellow => _responsiveTheme.yellow;
  static Color get yellow50 => _responsiveTheme.yellow50;
  static Color get yellow100 => _responsiveTheme.yellow100;
  static Color get yellow200 => _responsiveTheme.yellow200;
  static Color get yellow300 => _responsiveTheme.yellow300;
  static Color get yellow400 => _responsiveTheme.yellow400;
  static Color get yellow500 => _responsiveTheme.yellow500;
  static Color get yellow600 => _responsiveTheme.yellow600;

  // Doc Blue Scale
  static Color get docBlue50 => _responsiveTheme.docBlue50;
  static Color get docBlue100 => _responsiveTheme.docBlue100;
  static Color get docBlue200 => _responsiveTheme.docBlue200;
  static Color get docBlue300 => _responsiveTheme.docBlue300;
  static Color get docBlue400 => _responsiveTheme.docBlue400;
  static Color get docBlue500 => _responsiveTheme.docBlue500;
  static Color get docBlue600 => _responsiveTheme.docBlue600;

  // Podcast Green Scale
  static Color get podcastGreen50 => _responsiveTheme.podcastGreen50;
  static Color get podcastGreen100 => _responsiveTheme.podcastGreen100;
  static Color get podcastGreen200 => _responsiveTheme.podcastGreen200;
  static Color get podcastGreen300 => _responsiveTheme.podcastGreen300;
  static Color get podcastGreen400 => _responsiveTheme.podcastGreen400;
  //和UI确定后，500的颜色值在亮色暗色模式下一样
  static Color get podcastGreen500 => _responsiveTheme.podcastGreen500;
  static Color get podcastGreen600 => _responsiveTheme.podcastGreen600;

  // PPT Magenta Scale
  static Color get pptMagenta50 => _responsiveTheme.pptMagenta50;
  static Color get pptMagenta100 => _responsiveTheme.pptMagenta100;
  static Color get pptMagenta200 => _responsiveTheme.pptMagenta200;
  static Color get pptMagenta300 => _responsiveTheme.pptMagenta300;
  static Color get pptMagenta400 => _responsiveTheme.pptMagenta400;
  static Color get pptMagenta500 => _responsiveTheme.pptMagenta500;
  static Color get pptMagenta600 => _responsiveTheme.pptMagenta600;

  // Web Purple Scale
  static Color get webPurple50 => _responsiveTheme.webPurple50;
  static Color get webPurple100 => _responsiveTheme.webPurple100;
  static Color get webPurple200 => _responsiveTheme.webPurple200;
  static Color get webPurple300 => _responsiveTheme.webPurple300;
  static Color get webPurple400 => _responsiveTheme.webPurple400;
  static Color get webPurple500 => _responsiveTheme.webPurple500;
  static Color get webPurple600 => _responsiveTheme.webPurple600;

  // Light Blue Scale
  static Color get lightBlue => _responsiveTheme.lightBlue;
  static Color get lightBlue50 => _responsiveTheme.lightBlue50;
  static Color get lightBlue100 => _responsiveTheme.lightBlue100;
  static Color get lightBlue200 => _responsiveTheme.lightBlue200;
  static Color get lightBlue300 => _responsiveTheme.lightBlue300;
  static Color get lightBlue400 => _responsiveTheme.lightBlue400;
  static Color get lightBlue500 => _responsiveTheme.lightBlue500;
  static Color get lightBlue600 => _responsiveTheme.lightBlue600;

  // Sheets Green Scale
  static Color get sheetsGreen => _responsiveTheme.sheetsGreen;
  static Color get sheetsGreen50 => _responsiveTheme.sheetsGreen50;
  static Color get sheetsGreen100 => _responsiveTheme.sheetsGreen100;
  static Color get sheetsGreen200 => _responsiveTheme.sheetsGreen200;
  static Color get sheetsGreen300 => _responsiveTheme.sheetsGreen300;
  static Color get sheetsGreen400 => _responsiveTheme.sheetsGreen400;
  static Color get sheetsGreen500 => _responsiveTheme.sheetsGreen500;
  static Color get sheetsGreen600 => _responsiveTheme.sheetsGreen600;

  // Commercialization Yellow Scale
  static Color get commercializationYellow50 => _responsiveTheme.commercializationYellow50;
  static Color get commercializationYellow100 => _responsiveTheme.commercializationYellow100;
  static Color get commercializationYellow200 => _responsiveTheme.commercializationYellow200;
  static Color get commercializationYellow300 => _responsiveTheme.commercializationYellow300;
  static Color get commercializationYellow400 => _responsiveTheme.commercializationYellow400;
  static Color get commercializationYellow500 => _responsiveTheme.commercializationYellow500;
  static Color get commercializationYellow600 => _responsiveTheme.commercializationYellow600;

  // Gold Scale
  static Color get gold30 => _responsiveTheme.gold30;
  static Color get gold60 => _responsiveTheme.gold60;
  static Color get gold70 => _responsiveTheme.gold70;

  // =========================
  // 响应式颜色访问方法
  // =========================

  /// 提供基于 BuildContext 的响应式颜色访问
  /// 这个方法确保在 Widget build 过程中能正确响应主题变化
  ///
  /// 使用方式: ThemeColor.of(context).textIcon1
  static MultipleThemeExtension of(BuildContext context) {
    return context.multipleTheme;
  }
}
