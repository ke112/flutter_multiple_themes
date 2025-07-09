import 'package:flutter/material.dart';

/// 主题扩展
/// 使用 Flutter 的 ThemeExtension 来定义自定义颜色
class MultipleThemeExtension extends ThemeExtension<MultipleThemeExtension> {
  // Brand Colors
  final Color brand01Black;
  final Color brand02White;
  final Color brand03Blue;
  final Color brand04Green;
  final Color brand05Magenta;

  // Neutral Colors
  final Color neutralGrey60;
  final Color neutralGrey80;
  final Color neutralGrey100;
  final Color neutralGrey200;
  final Color neutralGrey300;
  final Color neutralGrey400;
  final Color neutralGrey500;
  final Color neutralGrey600;
  final Color neutralGrey700;
  final Color neutralGrey800;
  final Color neutralGrey900;
  final Color neutralGrey950;

  // Text & Icon Colors
  final Color textIcon1;
  final Color textIcon2;
  final Color textIcon3;
  final Color textIcon4;
  final Color textIcon5;
  final Color textIcon6;
  final Color textIcon7;
  final Color textIcon8;

  // Surface Colors
  final Color surface1;
  final Color surface2;
  final Color surface3;
  final Color surface4;
  final Color surface5;
  final Color surfaceFill3;

  // Fill Colors
  final Color fill1;
  final Color fill2;
  final Color fill3Hover;
  final Color fill4;
  final Color fill5;
  final Color fill6;
  final Color fill7;
  final Color fill7CoaCot;

  // Line Colors
  final Color line1;
  final Color line2;
  final Color line3;
  final Color line4;

  // Background Colors
  final Color backgroundMain1;
  final Color backgroundMain2;
  final Color backgroundMain3;
  final Color backgroundOverlay1;
  final Color backgroundOverlay2Tooltip;

  // Input Field Colors
  final Color inputFieldBgDefault;
  final Color inputFieldBgFilledHover;
  final Color inputFieldBgDisable;
  final Color inputFieldStrokeDefault;
  final Color inputFieldStrokeFilledHover;
  final Color inputFieldStrokeDisable;

  // Input Field Colors - Additional
  final Color inputFieldBgError;
  final Color inputFieldStrokeError;
  final Color inputFieldStrokeDisableCheck;

  // Main Color
  final Color docBlue;

  // Agent Colors
  final Color pptMagenta50;
  final Color sheetsGreen50;
  final Color webPurple50;
  final Color lightBlue50;
  final Color sheetsGreen;
  final Color webPurple500;
  final Color lightBlue;

  // Scene Colors
  final Color scenePopoverBg;
  final Color scenePopoverHover;

  // Grey Scale (duplicate of neutralGrey for compatibility)
  final Color grey60;
  final Color grey80;
  final Color grey100;
  final Color grey200;
  final Color grey300;
  final Color grey400;
  final Color grey500;
  final Color grey600;
  final Color grey700;
  final Color grey800;
  final Color grey900;
  final Color grey950;

  // Red Scale
  final Color red50;
  final Color red100;
  final Color red200;
  final Color red300;
  final Color red400;
  final Color red500;
  final Color red600;

  // Yellow Scale
  final Color yellow;
  final Color yellow50;
  final Color yellow100;
  final Color yellow200;
  final Color yellow300;
  final Color yellow400;
  final Color yellow500;
  final Color yellow600;

  // Doc Blue Scale
  final Color docBlue50;
  final Color docBlue100;
  final Color docBlue200;
  final Color docBlue300;
  final Color docBlue400;
  final Color docBlue500;
  final Color docBlue600;

  // Podcast Green Scale
  final Color podcastGreen50;
  final Color podcastGreen100;
  final Color podcastGreen200;
  final Color podcastGreen300;
  final Color podcastGreen400;
  final Color podcastGreen500;
  final Color podcastGreen600;

  // PPT Magenta Scale
  final Color pptMagenta100;
  final Color pptMagenta200;
  final Color pptMagenta300;
  final Color pptMagenta400;
  final Color pptMagenta500;
  final Color pptMagenta600;

  // Web Purple Scale
  final Color webPurple100;
  final Color webPurple200;
  final Color webPurple300;
  final Color webPurple400;
  final Color webPurple600;

  // Light Blue Scale
  final Color lightBlue100;
  final Color lightBlue200;
  final Color lightBlue300;
  final Color lightBlue400;
  final Color lightBlue500;
  final Color lightBlue600;

  // Sheets Green Scale
  final Color sheetsGreen100;
  final Color sheetsGreen200;
  final Color sheetsGreen300;
  final Color sheetsGreen400;
  final Color sheetsGreen500;
  final Color sheetsGreen600;

  // Commercialization Yellow Scale
  final Color commercializationYellow50;
  final Color commercializationYellow100;
  final Color commercializationYellow200;
  final Color commercializationYellow300;
  final Color commercializationYellow400;
  final Color commercializationYellow500;
  final Color commercializationYellow600;

  // Gold Scale
  final Color gold30;
  final Color gold60;
  final Color gold70;

  // Other Colors (需要根据项目补充)
  final Color otherDocCheck;

  const MultipleThemeExtension({
    required this.brand01Black,
    required this.brand02White,
    required this.brand03Blue,
    required this.brand04Green,
    required this.brand05Magenta,
    required this.neutralGrey60,
    required this.neutralGrey80,
    required this.neutralGrey100,
    required this.neutralGrey200,
    required this.neutralGrey300,
    required this.neutralGrey400,
    required this.neutralGrey500,
    required this.neutralGrey600,
    required this.neutralGrey700,
    required this.neutralGrey800,
    required this.neutralGrey900,
    required this.neutralGrey950,
    required this.textIcon1,
    required this.textIcon2,
    required this.textIcon3,
    required this.textIcon4,
    required this.textIcon5,
    required this.textIcon6,
    required this.textIcon7,
    required this.textIcon8,
    required this.surface1,
    required this.surface2,
    required this.surface3,
    required this.surface4,
    required this.surface5,
    required this.surfaceFill3,
    required this.fill1,
    required this.fill2,
    required this.fill3Hover,
    required this.fill4,
    required this.fill5,
    required this.fill6,
    required this.fill7,
    required this.fill7CoaCot,
    required this.line1,
    required this.line2,
    required this.line3,
    required this.line4,
    required this.backgroundMain1,
    required this.backgroundMain2,
    required this.backgroundMain3,
    required this.backgroundOverlay1,
    required this.backgroundOverlay2Tooltip,
    required this.inputFieldBgDefault,
    required this.inputFieldBgFilledHover,
    required this.inputFieldBgDisable,
    required this.inputFieldStrokeDefault,
    required this.inputFieldStrokeFilledHover,
    required this.inputFieldStrokeDisable,
    required this.inputFieldBgError,
    required this.inputFieldStrokeError,
    required this.inputFieldStrokeDisableCheck,
    required this.docBlue,
    required this.docBlue50,
    required this.pptMagenta50,
    required this.sheetsGreen50,
    required this.webPurple50,
    required this.lightBlue50,
    required this.sheetsGreen,
    required this.webPurple500,
    required this.lightBlue,
    required this.scenePopoverBg,
    required this.scenePopoverHover,
    required this.grey60,
    required this.grey80,
    required this.grey100,
    required this.grey200,
    required this.grey300,
    required this.grey400,
    required this.grey500,
    required this.grey600,
    required this.grey700,
    required this.grey800,
    required this.grey900,
    required this.grey950,
    required this.red50,
    required this.red100,
    required this.red200,
    required this.red300,
    required this.red400,
    required this.red500,
    required this.red600,
    required this.yellow,
    required this.yellow50,
    required this.yellow100,
    required this.yellow200,
    required this.yellow300,
    required this.yellow400,
    required this.yellow500,
    required this.yellow600,
    required this.docBlue100,
    required this.docBlue200,
    required this.docBlue300,
    required this.docBlue400,
    required this.docBlue500,
    required this.docBlue600,
    required this.podcastGreen50,
    required this.podcastGreen100,
    required this.podcastGreen200,
    required this.podcastGreen300,
    required this.podcastGreen400,
    required this.podcastGreen500,
    required this.podcastGreen600,
    required this.pptMagenta100,
    required this.pptMagenta200,
    required this.pptMagenta300,
    required this.pptMagenta400,
    required this.pptMagenta500,
    required this.pptMagenta600,
    required this.webPurple100,
    required this.webPurple200,
    required this.webPurple300,
    required this.webPurple400,
    required this.webPurple600,
    required this.lightBlue100,
    required this.lightBlue200,
    required this.lightBlue300,
    required this.lightBlue400,
    required this.lightBlue500,
    required this.lightBlue600,
    required this.sheetsGreen100,
    required this.sheetsGreen200,
    required this.sheetsGreen300,
    required this.sheetsGreen400,
    required this.sheetsGreen500,
    required this.sheetsGreen600,
    required this.commercializationYellow50,
    required this.commercializationYellow100,
    required this.commercializationYellow200,
    required this.commercializationYellow300,
    required this.commercializationYellow400,
    required this.commercializationYellow500,
    required this.commercializationYellow600,
    required this.gold30,
    required this.gold60,
    required this.gold70,
    required this.otherDocCheck,
  });

  /// 获取浅色主题
  static const MultipleThemeExtension light = MultipleThemeExtension(
    // Brand Colors
    brand01Black: Color(0xFF000818),
    brand02White: Color(0xFFFFFFFF),
    brand03Blue: Color(0xFF4D5EFF),
    brand04Green: Color(0xFF00EBBE),
    brand05Magenta: Color(0xFFFF576D),

    // Neutral Colors
    neutralGrey60: Color(0xFFF9FAFC),
    neutralGrey80: Color(0xFFF7F8FA),
    neutralGrey100: Color(0xFFF4F5F7),
    neutralGrey200: Color(0xFFEDEFF1),
    neutralGrey300: Color(0xFFE1E3E7),
    neutralGrey400: Color(0xFFD4D6DC),
    neutralGrey500: Color(0xFFC1C5CD),
    neutralGrey600: Color(0xFF979FAB),
    neutralGrey700: Color(0xFF7F8896),
    neutralGrey800: Color(0xFF485568),
    neutralGrey900: Color(0xFF333B46),
    neutralGrey950: Color(0xFF000818),

    // Text & Icon Colors
    textIcon1: Color(0xFF000818),
    textIcon2: Color(0xFF333B46),
    textIcon3: Color(0xFF485568),
    textIcon4: Color(0xFF7F8896),
    textIcon5: Color(0xFF979FAB),
    textIcon6: Color(0xFFFFFFFF),
    textIcon7: Color(0xB2FFFFFF),
    textIcon8: Color(0xFF000818),

    // Surface Colors
    surface1: Color(0xFFEDEFF1),
    surface2: Color(0xFFF4F5F7),
    surface3: Color(0xFFFFFFFF),
    surface4: Color(0xFFFFFFFF),
    surface5: Color(0xFFF4F5F7),
    surfaceFill3: Color(0xFFF5F6F7),

    // Fill Colors
    fill1: Color(0xFFD4D6DC),
    fill2: Color(0xFFEDEFF1),
    fill3Hover: Color(0xFFF4F5F7),
    fill4: Color(0xFFF9FAFC),
    fill5: Color(0xFFFFFFFF),
    fill6: Color(0xFFF9FAFC),
    fill7: Color(0x99FFFFFF),
    fill7CoaCot: Color(0x99FFFFFF),

    // Line Colors
    line1: Color(0xFFC1C5CD),
    line2: Color(0xFFD4D6DC),
    line3: Color(0xFFEDEFF1),
    line4: Color(0xFFF4F5F7),

    // Background Colors
    backgroundMain1: Color(0xFFF7F8FA),
    backgroundMain2: Color(0xFFF4F5F7),
    backgroundMain3: Color(0xFFFFFFFF),
    backgroundOverlay1: Color(0x80000000),
    backgroundOverlay2Tooltip: Color(0xFF262D3A),

    // Input Field Colors
    inputFieldBgDefault: Color(0xFFFFFFFF),
    inputFieldBgFilledHover: Color(0xFFFFFFFF),
    inputFieldBgDisable: Color(0xFFF9FAFC),
    inputFieldStrokeDefault: Color(0xFFEDEFF1),
    inputFieldStrokeFilledHover: Color(0xFF000818),
    inputFieldStrokeDisable: Color(0xFFF9FAFC),

    // Input Field Colors - Additional
    inputFieldBgError: Color(0xFFFFFFFF),
    inputFieldStrokeError: Color(0xFFFF3838),
    inputFieldStrokeDisableCheck: Color(0xFF7F8896),

    // Main Color
    docBlue: Color(0xFF4D5EFF),

    // Agent Colors
    docBlue50: Color(0xFFECF2FF),
    pptMagenta50: Color(0xFFFDF2F3),
    sheetsGreen50: Color(0xFFEAFAEF),
    webPurple50: Color(0xFFF3F2FF),
    lightBlue50: Color(0xFFF0F6FF),
    sheetsGreen: Color(0xFF29CC5F),
    webPurple500: Color(0xFF7357FF),
    lightBlue: Color(0xFF3385FF),

    // Scene Colors
    scenePopoverBg: Color(0xFFFFFFFF),
    scenePopoverHover: Color(0xFFF4F5F7),

    // Grey Scale (duplicate of neutralGrey for compatibility)
    grey60: Color(0xFFF9FAFC),
    grey80: Color(0xFFF7F8FA),
    grey100: Color(0xFFF4F5F7),
    grey200: Color(0xFFEDEFF1),
    grey300: Color(0xFFE1E3E7),
    grey400: Color(0xFFD4D6DC),
    grey500: Color(0xFFC1C5CD),
    grey600: Color(0xFF979FAB),
    grey700: Color(0xFF7F8896),
    grey800: Color(0xFF485568),
    grey900: Color(0xFF333B46),
    grey950: Color(0xFF000818),

    // Red Scale
    red50: Color(0xFFFFF1F1),
    red100: Color(0xFFFFDFDF),
    red200: Color(0xFFFFC5C5),
    red300: Color(0xFFFF9D9D),
    red400: Color(0xFFFF6464),
    red500: Color(0xFFFF3838),
    red600: Color(0xFFED1515),

    // Yellow Scale
    yellow: Color(0xFFFFAC4B),
    yellow50: Color(0xFFFFF6EB),
    yellow100: Color(0xFFFFF0DB),
    yellow200: Color(0xFFFFE1B2),
    yellow300: Color(0xFFFFD38A),
    yellow400: Color(0xFFFFC362),
    yellow500: Color(0xFFFFAC4B),
    yellow600: Color(0xFFE5962F),

    // Doc Blue Scale
    docBlue100: Color(0xFFDDE8FF),
    docBlue200: Color(0xFFC2D4FF),
    docBlue300: Color(0xFF9CB5FF),
    docBlue400: Color(0xFF758CFF),
    docBlue500: Color(0xFF4D5EFF),
    docBlue600: Color(0xFF3639F5),

    // Podcast Green Scale
    podcastGreen50: Color(0xFFE7FFF9),
    podcastGreen100: Color(0xFFC6FFEF),
    podcastGreen200: Color(0xFF92FFE5),
    podcastGreen300: Color(0xFF4DFFDD),
    podcastGreen400: Color(0xFF00EBBE),
    podcastGreen500: Color(0xFF00C9A7),
    podcastGreen600: Color(0xFF00BE99),

    // PPT Magenta Scale
    pptMagenta100: Color(0xFFFCE7EC),
    pptMagenta200: Color(0xFFFACFDB),
    pptMagenta300: Color(0xFFF7A8C1),
    pptMagenta400: Color(0xFFFF576D),
    pptMagenta500: Color(0xFFE94B64),
    pptMagenta600: Color(0xFFD8375C),

    // Web Purple Scale
    webPurple100: Color(0xFFE9E8FF),
    webPurple200: Color(0xFFD5D4FF),
    webPurple300: Color(0xFFB7B1FF),
    webPurple400: Color(0xFF9385FF),
    webPurple600: Color(0xFF5D30F7),

    // Light Blue Scale
    lightBlue100: Color(0xFFE0EDFF),
    lightBlue200: Color(0xFF7FB2FF),
    lightBlue300: Color(0xFF5D9EFF),
    lightBlue400: Color(0xFF4C90FF),
    lightBlue500: Color(0xFF3385FF),
    lightBlue600: Color(0xFF1F6FE5),

    // Sheets Green Scale
    sheetsGreen100: Color(0xFFD6F5DF),
    sheetsGreen200: Color(0xFFA8EFC4),
    sheetsGreen300: Color(0xFF7CE7A5),
    sheetsGreen400: Color(0xFF50DD85),
    sheetsGreen500: Color(0xFF29CC5F),
    sheetsGreen600: Color(0xFF1DA84C),

    // Commercialization Yellow Scale
    commercializationYellow50: Color(0xFFFFF9F0),
    commercializationYellow100: Color(0xFFFFF1DC),
    commercializationYellow200: Color(0xFFFFE7C2),
    commercializationYellow300: Color(0xFFFFEBCC),
    commercializationYellow400: Color(0xFFFFDAA3),
    commercializationYellow500: Color(0xFFFFC369),
    commercializationYellow600: Color(0xFFE6A844),

    // Gold Scale
    gold30: Color(0xFFFDCA87),
    gold60: Color(0xFFB4630E),
    gold70: Color(0xFF773D00),

    // Other Colors
    otherDocCheck: Color(0x334D5EFF),
  );

  /// 获取暗色主题
  static const MultipleThemeExtension dark = MultipleThemeExtension(
    // Brand Colors
    brand01Black: Color(0xFFF5F5F5),
    brand02White: Color(0xFF181D24),
    brand03Blue: Color(0xFF8094FF),
    brand04Green: Color(0xFF00C9A7),
    brand05Magenta: Color(0xFFFF576D),

    // Neutral Colors
    neutralGrey60: Color(0xFF0F131A),
    neutralGrey80: Color(0xFF0F131A),
    neutralGrey100: Color(0xFF252933),
    neutralGrey200: Color(0xFF343841),
    neutralGrey300: Color(0xFF525763),
    neutralGrey400: Color(0xFF6C727F),
    neutralGrey500: Color(0xFF868E9B),
    neutralGrey600: Color(0xFF979FAB),
    neutralGrey700: Color(0xFFBABBBD),
    neutralGrey800: Color(0xFFEBEBEB),
    neutralGrey900: Color(0xFFF5F5F5),
    neutralGrey950: Color(0xFFFFFFFF),

    // Text & Icon Colors
    textIcon1: Color(0xFFFFFFFF),
    textIcon2: Color(0xFFF5F5F5),
    textIcon3: Color(0xFFEBEBEB),
    textIcon4: Color(0xFF979FAB),
    textIcon5: Color(0xFF525763),
    textIcon6: Color(0xFF181D24),
    textIcon7: Color(0xB2121826),
    textIcon8: Color(0xFF181D24),

    // Surface Colors
    surface1: Color(0xFF343841),
    surface2: Color(0xFF252933),
    surface3: Color(0xFF181D24),
    surface4: Color(0xFF181D24),
    surface5: Color(0xFF181D24),
    surfaceFill3: Color(0xFF252933),

    // Fill Colors
    fill1: Color(0xFF6C727F),
    fill2: Color(0xFF343841),
    fill3Hover: Color(0xFF252933),
    fill4: Color(0xFF212932),
    fill5: Color(0xFF181D24),
    fill6: Color(0xFF202632),
    fill7: Color(0x99000818),
    fill7CoaCot: Color(0x99000818),

    // Line Colors
    line1: Color(0xFF6C727F),
    line2: Color(0xFF525763),
    line3: Color(0xFF343841),
    line4: Color(0xFF252933),

    // Background Colors
    backgroundMain1: Color(0xFF0F131A),
    backgroundMain2: Color(0xFF0F131A),
    backgroundMain3: Color(0xFF181D24),
    backgroundOverlay1: Color(0xCC000000),
    backgroundOverlay2Tooltip: Color(0xFF0F1116),

    // Input Field Colors
    inputFieldBgDefault: Color(0xFF0F131A),
    inputFieldBgFilledHover: Color(0xFF0F131A),
    inputFieldBgDisable: Color(0xFF252933),
    inputFieldStrokeDefault: Color(0xFF6C727F),
    inputFieldStrokeFilledHover: Color(0xFF6C727F),
    inputFieldStrokeDisable: Color(0xFF0F131A),
    inputFieldStrokeDisableCheck: Color(0xFFBABBBD),

    // Input Field Colors - Additional
    inputFieldBgError: Color(0xFF0F131A),
    inputFieldStrokeError: Color(0xFFFF5A5A),

    // Scene Colors
    scenePopoverBg: Color(0xFF252933),
    scenePopoverHover: Color(0xFF181D24),

    // Grey Scale (duplicate of neutralGrey for compatibility)
    grey60: Color(0xFF0F131A),
    grey80: Color(0xFF0F131A),
    grey100: Color(0xFF252933),
    grey200: Color(0xFF343841),
    grey300: Color(0xFF525763),
    grey400: Color(0xFF6C727F),
    grey500: Color(0xFF868E9B),
    grey600: Color(0xFF979FAB),
    grey700: Color(0xFFBABBBD),
    grey800: Color(0xFFEBEBEB),
    grey900: Color(0xFFF5F5F5),
    grey950: Color(0xFFFFFFFF),

    // Red Scale
    red50: Color(0xFF2F1B1B),
    red100: Color(0xFF4A2121),
    red200: Color(0xFF742626),
    red300: Color(0xFFA42E2E),
    red400: Color(0xFFD93C3C),
    red500: Color(0xFFFF5A5A),
    red600: Color(0xFFE04040),

    // Yellow Scale
    yellow: Color(0xFFD68F3C),
    yellow50: Color(0xFF3A2C1A),
    yellow100: Color(0xFF4E3921),
    yellow200: Color(0xFF71502A),
    yellow300: Color(0xFF926830),
    yellow400: Color(0xFFB97F34),
    yellow500: Color(0xFFD69138),
    yellow600: Color(0xFFEDAA4A),

    // Doc Blue Scale
    docBlue: Color(0xFF8094FF),
    docBlue50: Color(0xFF222A3A),
    docBlue100: Color(0xFF333F61),
    docBlue200: Color(0xFF36456B),
    docBlue300: Color(0xFF4C5F9A),
    docBlue400: Color(0xFF667BCE),
    docBlue500: Color(0xFF8094FF),
    docBlue600: Color(0xFF5E6FE0),

    // Podcast Green Scale
    podcastGreen50: Color(0xFF1A2A2E),
    podcastGreen100: Color(0xFF214746),
    podcastGreen200: Color(0xFF16524D),
    podcastGreen300: Color(0xFF00806F),
    podcastGreen400: Color(0xFF00A38C),
    podcastGreen500: Color(0xFF009E8C),
    podcastGreen600: Color(0xFF00C9A7),

    // PPT Magenta Scale
    pptMagenta50: Color(0xFF2E2326),
    pptMagenta100: Color(0xFF472C35),
    pptMagenta200: Color(0xFF5A2E3B),
    pptMagenta300: Color(0xFF923C52),
    pptMagenta400: Color(0xFFFF576D),
    pptMagenta500: Color(0xFFE94B64),
    pptMagenta600: Color(0xFFC93D5C),

    // Web Purple Scale
    webPurple50: Color(0xFF2A2840),
    webPurple100: Color(0xFF3A3759),
    webPurple200: Color(0xFF49477D),
    webPurple300: Color(0xFF6762B8),
    webPurple400: Color(0xFF877FE7),
    webPurple500: Color(0xFF9F8FFF),
    webPurple600: Color(0xFFB497FF),

    // Light Blue Scale
    lightBlue: Color(0xFF5C9EFF),
    lightBlue50: Color(0xFF1A2533),
    lightBlue100: Color(0xFF253952),
    lightBlue200: Color(0xFF305281),
    lightBlue300: Color(0xFF3C68B3),
    lightBlue400: Color(0xFF4A7EF2),
    lightBlue500: Color(0xFF5C9EFF),
    lightBlue600: Color(0xFF75B5FF),

    // Sheets Green Scale
    sheetsGreen: Color(0xFF63E68E),
    sheetsGreen50: Color(0xFF16281D),
    sheetsGreen100: Color(0xFF2B4738),
    sheetsGreen200: Color(0xFF2D6A49),
    sheetsGreen300: Color(0xFF3D9E66),
    sheetsGreen400: Color(0xFF4ECF82),
    sheetsGreen500: Color(0xFF63E68E),
    sheetsGreen600: Color(0xFF7DF3A1),

    // Commercialization Yellow Scale
    commercializationYellow50: Color(0xFF1F1E1D),
    commercializationYellow100: Color(0xFF2C2823),
    commercializationYellow200: Color(0xFF3D372F),
    commercializationYellow300: Color(0xFF5A4731),
    commercializationYellow400: Color(0xFF916633),
    commercializationYellow500: Color(0xFFDB9A4A),
    commercializationYellow600: Color(0xFFF3B04E),

    // Gold Scale
    gold30: Color(0xFFFDCA87),
    gold60: Color(0xFFB4630E),
    gold70: Color(0xFF773D00),

    // Other Colors
    otherDocCheck: Color(0x338094FF),
  );

  /// 获取绿色主题
  static const MultipleThemeExtension green = MultipleThemeExtension(
    // Brand Colors
    brand01Black: Color(0xFF000818),
    brand02White: Color(0xFFFFFFFF),
    brand03Blue: Color(0xFF4D5EFF),
    brand04Green: Color(0xFF00EBBE),
    brand05Magenta: Color(0xFFFF576D),

    // Neutral Colors
    neutralGrey60: Color(0xFFF9FAFC),
    neutralGrey80: Color(0xFFF7F8FA),
    neutralGrey100: Color(0xFFF4F5F7),
    neutralGrey200: Color(0xFFEDEFF1),
    neutralGrey300: Color(0xFFE1E3E7),
    neutralGrey400: Color(0xFFD4D6DC),
    neutralGrey500: Color(0xFFC1C5CD),
    neutralGrey600: Color(0xFF979FAB),
    neutralGrey700: Color(0xFF7F8896),
    neutralGrey800: Color(0xFF485568),
    neutralGrey900: Color(0xFF333B46),
    neutralGrey950: Color(0xFF000818),

    // Text & Icon Colors
    textIcon1: Color(0xFF000818),
    textIcon2: Color(0xFF333B46),
    textIcon3: Color(0xFF485568),
    textIcon4: Color(0xFF7F8896),
    textIcon5: Color(0xFF979FAB),
    textIcon6: Color(0xFFFFFFFF),
    textIcon7: Color(0xB2FFFFFF),
    textIcon8: Color(0xFF000818),

    // Surface Colors
    surface1: Color(0xFFEDEFF1),
    surface2: Color(0xFFF4F5F7),
    surface3: Color(0xFFFFFFFF),
    surface4: Color(0xFFFFFFFF),
    surface5: Color(0xFFF4F5F7),
    surfaceFill3: Color(0xFFF5F6F7),

    // Fill Colors
    fill1: Color(0xFFD4D6DC),
    fill2: Color(0xFFEDEFF1),
    fill3Hover: Color(0xFFF4F5F7),
    fill4: Color(0xFFF9FAFC),
    fill5: Color(0xFFFFFFFF),
    fill6: Color(0xFFF9FAFC),
    fill7: Color(0x99FFFFFF),
    fill7CoaCot: Color(0x99FFFFFF),

    // Line Colors
    line1: Color(0xFFC1C5CD),
    line2: Color(0xFFD4D6DC),
    line3: Color(0xFFEDEFF1),
    line4: Color(0xFFF4F5F7),

    // Background Colors
    backgroundMain1: Color(0xFFF7F8FA),
    backgroundMain2: Color(0xFFF4F5F7),
    backgroundMain3: Color(0xFFFFFFFF),
    backgroundOverlay1: Color(0x80000000),
    backgroundOverlay2Tooltip: Color(0xFF262D3A),

    // Input Field Colors
    inputFieldBgDefault: Color(0xFFFFFFFF),
    inputFieldBgFilledHover: Color(0xFFFFFFFF),
    inputFieldBgDisable: Color(0xFFF9FAFC),
    inputFieldStrokeDefault: Color(0xFFEDEFF1),
    inputFieldStrokeFilledHover: Color(0xFF000818),
    inputFieldStrokeDisable: Color(0xFFF9FAFC),

    // Input Field Colors - Additional
    inputFieldBgError: Color(0xFFFFFFFF),
    inputFieldStrokeError: Color(0xFFFF3838),
    inputFieldStrokeDisableCheck: Color(0xFF7F8896),

    // Main Color
    docBlue: Color(0xFF4D5EFF),

    // Agent Colors
    docBlue50: Color(0xFFECF2FF),
    pptMagenta50: Color(0xFFFDF2F3),
    sheetsGreen50: Color(0xFFEAFAEF),
    webPurple50: Color(0xFFF3F2FF),
    lightBlue50: Color(0xFFF0F6FF),
    sheetsGreen: Color(0xFF29CC5F),
    webPurple500: Color(0xFF7357FF),
    lightBlue: Color(0xFF3385FF),

    // Scene Colors
    scenePopoverBg: Color(0xFFFFFFFF),
    scenePopoverHover: Color(0xFFF4F5F7),

    // Grey Scale (duplicate of neutralGrey for compatibility)
    grey60: Color(0xFFF9FAFC),
    grey80: Color(0xFFF7F8FA),
    grey100: Color(0xFFF4F5F7),
    grey200: Color(0xFFEDEFF1),
    grey300: Color(0xFFE1E3E7),
    grey400: Color(0xFFD4D6DC),
    grey500: Color(0xFFC1C5CD),
    grey600: Color(0xFF979FAB),
    grey700: Color(0xFF7F8896),
    grey800: Color(0xFF485568),
    grey900: Color(0xFF333B46),
    grey950: Color(0xFF000818),

    // Red Scale
    red50: Color(0xFFFFF1F1),
    red100: Color(0xFFFFDFDF),
    red200: Color(0xFFFFC5C5),
    red300: Color(0xFFFF9D9D),
    red400: Color(0xFFFF6464),
    red500: Color(0xFFFF3838),
    red600: Color(0xFFED1515),

    // Yellow Scale
    yellow: Color(0xFFFFAC4B),
    yellow50: Color(0xFFFFF6EB),
    yellow100: Color(0xFFFFF0DB),
    yellow200: Color(0xFFFFE1B2),
    yellow300: Color(0xFFFFD38A),
    yellow400: Color(0xFFFFC362),
    yellow500: Color(0xFFFFAC4B),
    yellow600: Color(0xFFE5962F),

    // Doc Blue Scale
    docBlue100: Color(0xFFDDE8FF),
    docBlue200: Color(0xFFC2D4FF),
    docBlue300: Color(0xFF9CB5FF),
    docBlue400: Color(0xFF758CFF),
    docBlue500: Color(0xFF4D5EFF),
    docBlue600: Color(0xFF3639F5),

    // Podcast Green Scale
    podcastGreen50: Color(0xFFE7FFF9),
    podcastGreen100: Color(0xFFC6FFEF),
    podcastGreen200: Color(0xFF92FFE5),
    podcastGreen300: Color(0xFF4DFFDD),
    podcastGreen400: Color(0xFF00EBBE),
    podcastGreen500: Color(0xFF00C9A7),
    podcastGreen600: Color(0xFF00BE99),

    // PPT Magenta Scale
    pptMagenta100: Color(0xFFFCE7EC),
    pptMagenta200: Color(0xFFFACFDB),
    pptMagenta300: Color(0xFFF7A8C1),
    pptMagenta400: Color(0xFFFF576D),
    pptMagenta500: Color(0xFFE94B64),
    pptMagenta600: Color(0xFFD8375C),

    // Web Purple Scale
    webPurple100: Color(0xFFE9E8FF),
    webPurple200: Color(0xFFD5D4FF),
    webPurple300: Color(0xFFB7B1FF),
    webPurple400: Color(0xFF9385FF),
    webPurple600: Color(0xFF5D30F7),

    // Light Blue Scale
    lightBlue100: Color(0xFFE0EDFF),
    lightBlue200: Color(0xFF7FB2FF),
    lightBlue300: Color(0xFF5D9EFF),
    lightBlue400: Color(0xFF4C90FF),
    lightBlue500: Color(0xFF3385FF),
    lightBlue600: Color(0xFF1F6FE5),

    // Sheets Green Scale
    sheetsGreen100: Color(0xFFD6F5DF),
    sheetsGreen200: Color(0xFFA8EFC4),
    sheetsGreen300: Color(0xFF7CE7A5),
    sheetsGreen400: Color(0xFF50DD85),
    sheetsGreen500: Color(0xFF29CC5F),
    sheetsGreen600: Color(0xFF1DA84C),

    // Commercialization Yellow Scale
    commercializationYellow50: Color(0xFFFFF9F0),
    commercializationYellow100: Color(0xFFFFF1DC),
    commercializationYellow200: Color(0xFFFFE7C2),
    commercializationYellow300: Color(0xFFFFEBCC),
    commercializationYellow400: Color(0xFFFFDAA3),
    commercializationYellow500: Color(0xFFFFC369),
    commercializationYellow600: Color(0xFFE6A844),

    // Gold Scale
    gold30: Color(0xFFFDCA87),
    gold60: Color(0xFFB4630E),
    gold70: Color(0xFF773D00),

    // Other Colors
    otherDocCheck: Color(0x334D5EFF),
  );

  /// 获取绿色主题
  static const MultipleThemeExtension red = MultipleThemeExtension(
    // Brand Colors
    brand01Black: Color(0xFF000818),
    brand02White: Color(0xFFFFFFFF),
    brand03Blue: Color(0xFF4D5EFF),
    brand04Green: Color(0xFF00EBBE),
    brand05Magenta: Color(0xFFFF576D),

    // Neutral Colors
    neutralGrey60: Color(0xFFF9FAFC),
    neutralGrey80: Color(0xFFF7F8FA),
    neutralGrey100: Color(0xFFF4F5F7),
    neutralGrey200: Color(0xFFEDEFF1),
    neutralGrey300: Color(0xFFE1E3E7),
    neutralGrey400: Color(0xFFD4D6DC),
    neutralGrey500: Color(0xFFC1C5CD),
    neutralGrey600: Color(0xFF979FAB),
    neutralGrey700: Color(0xFF7F8896),
    neutralGrey800: Color(0xFF485568),
    neutralGrey900: Color(0xFF333B46),
    neutralGrey950: Color(0xFF000818),

    // Text & Icon Colors
    textIcon1: Color(0xFF000818),
    textIcon2: Color(0xFF333B46),
    textIcon3: Color(0xFF485568),
    textIcon4: Color(0xFF7F8896),
    textIcon5: Color(0xFF979FAB),
    textIcon6: Color(0xFFFFFFFF),
    textIcon7: Color(0xB2FFFFFF),
    textIcon8: Color(0xFF000818),

    // Surface Colors
    surface1: Color(0xFFEDEFF1),
    surface2: Color(0xFFF4F5F7),
    surface3: Color(0xFFFFFFFF),
    surface4: Color(0xFFFFFFFF),
    surface5: Color(0xFFF4F5F7),
    surfaceFill3: Color(0xFFF5F6F7),

    // Fill Colors
    fill1: Color(0xFFD4D6DC),
    fill2: Color(0xFFEDEFF1),
    fill3Hover: Color(0xFFF4F5F7),
    fill4: Color(0xFFF9FAFC),
    fill5: Color(0xFFFFFFFF),
    fill6: Color(0xFFF9FAFC),
    fill7: Color(0x99FFFFFF),
    fill7CoaCot: Color(0x99FFFFFF),

    // Line Colors
    line1: Color(0xFFC1C5CD),
    line2: Color(0xFFD4D6DC),
    line3: Color(0xFFEDEFF1),
    line4: Color(0xFFF4F5F7),

    // Background Colors
    backgroundMain1: Color(0xFFF7F8FA),
    backgroundMain2: Color(0xFFF4F5F7),
    backgroundMain3: Color(0xFFFFFFFF),
    backgroundOverlay1: Color(0x80000000),
    backgroundOverlay2Tooltip: Color(0xFF262D3A),

    // Input Field Colors
    inputFieldBgDefault: Color(0xFFFFFFFF),
    inputFieldBgFilledHover: Color(0xFFFFFFFF),
    inputFieldBgDisable: Color(0xFFF9FAFC),
    inputFieldStrokeDefault: Color(0xFFEDEFF1),
    inputFieldStrokeFilledHover: Color(0xFF000818),
    inputFieldStrokeDisable: Color(0xFFF9FAFC),

    // Input Field Colors - Additional
    inputFieldBgError: Color(0xFFFFFFFF),
    inputFieldStrokeError: Color(0xFFFF3838),
    inputFieldStrokeDisableCheck: Color(0xFF7F8896),

    // Main Color
    docBlue: Color(0xFF4D5EFF),

    // Agent Colors
    docBlue50: Color(0xFFECF2FF),
    pptMagenta50: Color(0xFFFDF2F3),
    sheetsGreen50: Color(0xFFEAFAEF),
    webPurple50: Color(0xFFF3F2FF),
    lightBlue50: Color(0xFFF0F6FF),
    sheetsGreen: Color(0xFF29CC5F),
    webPurple500: Color(0xFF7357FF),
    lightBlue: Color(0xFF3385FF),

    // Scene Colors
    scenePopoverBg: Color(0xFFFFFFFF),
    scenePopoverHover: Color(0xFFF4F5F7),

    // Grey Scale (duplicate of neutralGrey for compatibility)
    grey60: Color(0xFFF9FAFC),
    grey80: Color(0xFFF7F8FA),
    grey100: Color(0xFFF4F5F7),
    grey200: Color(0xFFEDEFF1),
    grey300: Color(0xFFE1E3E7),
    grey400: Color(0xFFD4D6DC),
    grey500: Color(0xFFC1C5CD),
    grey600: Color(0xFF979FAB),
    grey700: Color(0xFF7F8896),
    grey800: Color(0xFF485568),
    grey900: Color(0xFF333B46),
    grey950: Color(0xFF000818),

    // Red Scale
    red50: Color(0xFFFFF1F1),
    red100: Color(0xFFFFDFDF),
    red200: Color(0xFFFFC5C5),
    red300: Color(0xFFFF9D9D),
    red400: Color(0xFFFF6464),
    red500: Color(0xFFFF3838),
    red600: Color(0xFFED1515),

    // Yellow Scale
    yellow: Color(0xFFFFAC4B),
    yellow50: Color(0xFFFFF6EB),
    yellow100: Color(0xFFFFF0DB),
    yellow200: Color(0xFFFFE1B2),
    yellow300: Color(0xFFFFD38A),
    yellow400: Color(0xFFFFC362),
    yellow500: Color(0xFFFFAC4B),
    yellow600: Color(0xFFE5962F),

    // Doc Blue Scale
    docBlue100: Color(0xFFDDE8FF),
    docBlue200: Color(0xFFC2D4FF),
    docBlue300: Color(0xFF9CB5FF),
    docBlue400: Color(0xFF758CFF),
    docBlue500: Color(0xFF4D5EFF),
    docBlue600: Color(0xFF3639F5),

    // Podcast Green Scale
    podcastGreen50: Color(0xFFE7FFF9),
    podcastGreen100: Color(0xFFC6FFEF),
    podcastGreen200: Color(0xFF92FFE5),
    podcastGreen300: Color(0xFF4DFFDD),
    podcastGreen400: Color(0xFF00EBBE),
    podcastGreen500: Color(0xFF00C9A7),
    podcastGreen600: Color(0xFF00BE99),

    // PPT Magenta Scale
    pptMagenta100: Color(0xFFFCE7EC),
    pptMagenta200: Color(0xFFFACFDB),
    pptMagenta300: Color(0xFFF7A8C1),
    pptMagenta400: Color(0xFFFF576D),
    pptMagenta500: Color(0xFFE94B64),
    pptMagenta600: Color(0xFFD8375C),

    // Web Purple Scale
    webPurple100: Color(0xFFE9E8FF),
    webPurple200: Color(0xFFD5D4FF),
    webPurple300: Color(0xFFB7B1FF),
    webPurple400: Color(0xFF9385FF),
    webPurple600: Color(0xFF5D30F7),

    // Light Blue Scale
    lightBlue100: Color(0xFFE0EDFF),
    lightBlue200: Color(0xFF7FB2FF),
    lightBlue300: Color(0xFF5D9EFF),
    lightBlue400: Color(0xFF4C90FF),
    lightBlue500: Color(0xFF3385FF),
    lightBlue600: Color(0xFF1F6FE5),

    // Sheets Green Scale
    sheetsGreen100: Color(0xFFD6F5DF),
    sheetsGreen200: Color(0xFFA8EFC4),
    sheetsGreen300: Color(0xFF7CE7A5),
    sheetsGreen400: Color(0xFF50DD85),
    sheetsGreen500: Color(0xFF29CC5F),
    sheetsGreen600: Color(0xFF1DA84C),

    // Commercialization Yellow Scale
    commercializationYellow50: Color(0xFFFFF9F0),
    commercializationYellow100: Color(0xFFFFF1DC),
    commercializationYellow200: Color(0xFFFFE7C2),
    commercializationYellow300: Color(0xFFFFEBCC),
    commercializationYellow400: Color(0xFFFFDAA3),
    commercializationYellow500: Color(0xFFFFC369),
    commercializationYellow600: Color(0xFFE6A844),

    // Gold Scale
    gold30: Color(0xFFFDCA87),
    gold60: Color(0xFFB4630E),
    gold70: Color(0xFF773D00),

    // Other Colors
    otherDocCheck: Color(0x334D5EFF),
  );

  /// 获取绿色主题
  static const MultipleThemeExtension purple = MultipleThemeExtension(
    // Brand Colors
    brand01Black: Color(0xFF000818),
    brand02White: Color(0xFFFFFFFF),
    brand03Blue: Color(0xFF4D5EFF),
    brand04Green: Color(0xFF00EBBE),
    brand05Magenta: Color(0xFFFF576D),

    // Neutral Colors
    neutralGrey60: Color(0xFFF9FAFC),
    neutralGrey80: Color(0xFFF7F8FA),
    neutralGrey100: Color(0xFFF4F5F7),
    neutralGrey200: Color(0xFFEDEFF1),
    neutralGrey300: Color(0xFFE1E3E7),
    neutralGrey400: Color(0xFFD4D6DC),
    neutralGrey500: Color(0xFFC1C5CD),
    neutralGrey600: Color(0xFF979FAB),
    neutralGrey700: Color(0xFF7F8896),
    neutralGrey800: Color(0xFF485568),
    neutralGrey900: Color(0xFF333B46),
    neutralGrey950: Color(0xFF000818),

    // Text & Icon Colors
    textIcon1: Color(0xFF000818),
    textIcon2: Color(0xFF333B46),
    textIcon3: Color(0xFF485568),
    textIcon4: Color(0xFF7F8896),
    textIcon5: Color(0xFF979FAB),
    textIcon6: Color(0xFFFFFFFF),
    textIcon7: Color(0xB2FFFFFF),
    textIcon8: Color(0xFF000818),

    // Surface Colors
    surface1: Color(0xFFEDEFF1),
    surface2: Color(0xFFF4F5F7),
    surface3: Color(0xFFFFFFFF),
    surface4: Color(0xFFFFFFFF),
    surface5: Color(0xFFF4F5F7),
    surfaceFill3: Color(0xFFF5F6F7),

    // Fill Colors
    fill1: Color(0xFFD4D6DC),
    fill2: Color(0xFFEDEFF1),
    fill3Hover: Color(0xFFF4F5F7),
    fill4: Color(0xFFF9FAFC),
    fill5: Color(0xFFFFFFFF),
    fill6: Color(0xFFF9FAFC),
    fill7: Color(0x99FFFFFF),
    fill7CoaCot: Color(0x99FFFFFF),

    // Line Colors
    line1: Color(0xFFC1C5CD),
    line2: Color(0xFFD4D6DC),
    line3: Color(0xFFEDEFF1),
    line4: Color(0xFFF4F5F7),

    // Background Colors
    backgroundMain1: Color(0xFFF7F8FA),
    backgroundMain2: Color(0xFFF4F5F7),
    backgroundMain3: Color(0xFFFFFFFF),
    backgroundOverlay1: Color(0x80000000),
    backgroundOverlay2Tooltip: Color(0xFF262D3A),

    // Input Field Colors
    inputFieldBgDefault: Color(0xFFFFFFFF),
    inputFieldBgFilledHover: Color(0xFFFFFFFF),
    inputFieldBgDisable: Color(0xFFF9FAFC),
    inputFieldStrokeDefault: Color(0xFFEDEFF1),
    inputFieldStrokeFilledHover: Color(0xFF000818),
    inputFieldStrokeDisable: Color(0xFFF9FAFC),

    // Input Field Colors - Additional
    inputFieldBgError: Color(0xFFFFFFFF),
    inputFieldStrokeError: Color(0xFFFF3838),
    inputFieldStrokeDisableCheck: Color(0xFF7F8896),

    // Main Color
    docBlue: Color(0xFF4D5EFF),

    // Agent Colors
    docBlue50: Color(0xFFECF2FF),
    pptMagenta50: Color(0xFFFDF2F3),
    sheetsGreen50: Color(0xFFEAFAEF),
    webPurple50: Color(0xFFF3F2FF),
    lightBlue50: Color(0xFFF0F6FF),
    sheetsGreen: Color(0xFF29CC5F),
    webPurple500: Color(0xFF7357FF),
    lightBlue: Color(0xFF3385FF),

    // Scene Colors
    scenePopoverBg: Color(0xFFFFFFFF),
    scenePopoverHover: Color(0xFFF4F5F7),

    // Grey Scale (duplicate of neutralGrey for compatibility)
    grey60: Color(0xFFF9FAFC),
    grey80: Color(0xFFF7F8FA),
    grey100: Color(0xFFF4F5F7),
    grey200: Color(0xFFEDEFF1),
    grey300: Color(0xFFE1E3E7),
    grey400: Color(0xFFD4D6DC),
    grey500: Color(0xFFC1C5CD),
    grey600: Color(0xFF979FAB),
    grey700: Color(0xFF7F8896),
    grey800: Color(0xFF485568),
    grey900: Color(0xFF333B46),
    grey950: Color(0xFF000818),

    // Red Scale
    red50: Color(0xFFFFF1F1),
    red100: Color(0xFFFFDFDF),
    red200: Color(0xFFFFC5C5),
    red300: Color(0xFFFF9D9D),
    red400: Color(0xFFFF6464),
    red500: Color(0xFFFF3838),
    red600: Color(0xFFED1515),

    // Yellow Scale
    yellow: Color(0xFFFFAC4B),
    yellow50: Color(0xFFFFF6EB),
    yellow100: Color(0xFFFFF0DB),
    yellow200: Color(0xFFFFE1B2),
    yellow300: Color(0xFFFFD38A),
    yellow400: Color(0xFFFFC362),
    yellow500: Color(0xFFFFAC4B),
    yellow600: Color(0xFFE5962F),

    // Doc Blue Scale
    docBlue100: Color(0xFFDDE8FF),
    docBlue200: Color(0xFFC2D4FF),
    docBlue300: Color(0xFF9CB5FF),
    docBlue400: Color(0xFF758CFF),
    docBlue500: Color(0xFF4D5EFF),
    docBlue600: Color(0xFF3639F5),

    // Podcast Green Scale
    podcastGreen50: Color(0xFFE7FFF9),
    podcastGreen100: Color(0xFFC6FFEF),
    podcastGreen200: Color(0xFF92FFE5),
    podcastGreen300: Color(0xFF4DFFDD),
    podcastGreen400: Color(0xFF00EBBE),
    podcastGreen500: Color(0xFF00C9A7),
    podcastGreen600: Color(0xFF00BE99),

    // PPT Magenta Scale
    pptMagenta100: Color(0xFFFCE7EC),
    pptMagenta200: Color(0xFFFACFDB),
    pptMagenta300: Color(0xFFF7A8C1),
    pptMagenta400: Color(0xFFFF576D),
    pptMagenta500: Color(0xFFE94B64),
    pptMagenta600: Color(0xFFD8375C),

    // Web Purple Scale
    webPurple100: Color(0xFFE9E8FF),
    webPurple200: Color(0xFFD5D4FF),
    webPurple300: Color(0xFFB7B1FF),
    webPurple400: Color(0xFF9385FF),
    webPurple600: Color(0xFF5D30F7),

    // Light Blue Scale
    lightBlue100: Color(0xFFE0EDFF),
    lightBlue200: Color(0xFF7FB2FF),
    lightBlue300: Color(0xFF5D9EFF),
    lightBlue400: Color(0xFF4C90FF),
    lightBlue500: Color(0xFF3385FF),
    lightBlue600: Color(0xFF1F6FE5),

    // Sheets Green Scale
    sheetsGreen100: Color(0xFFD6F5DF),
    sheetsGreen200: Color(0xFFA8EFC4),
    sheetsGreen300: Color(0xFF7CE7A5),
    sheetsGreen400: Color(0xFF50DD85),
    sheetsGreen500: Color(0xFF29CC5F),
    sheetsGreen600: Color(0xFF1DA84C),

    // Commercialization Yellow Scale
    commercializationYellow50: Color(0xFFFFF9F0),
    commercializationYellow100: Color(0xFFFFF1DC),
    commercializationYellow200: Color(0xFFFFE7C2),
    commercializationYellow300: Color(0xFFFFEBCC),
    commercializationYellow400: Color(0xFFFFDAA3),
    commercializationYellow500: Color(0xFFFFC369),
    commercializationYellow600: Color(0xFFE6A844),

    // Gold Scale
    gold30: Color(0xFFFDCA87),
    gold60: Color(0xFFB4630E),
    gold70: Color(0xFF773D00),

    // Other Colors
    otherDocCheck: Color(0x334D5EFF),
  );

  @override
  ThemeExtension<MultipleThemeExtension> copyWith({
    Color? brand01Black,
    Color? brand02White,
    Color? brand03Blue,
    Color? brand04Green,
    Color? brand05Magenta,
    Color? neutralGrey60,
    Color? neutralGrey80,
    Color? neutralGrey100,
    Color? neutralGrey200,
    Color? neutralGrey300,
    Color? neutralGrey400,
    Color? neutralGrey500,
    Color? neutralGrey600,
    Color? neutralGrey700,
    Color? neutralGrey800,
    Color? neutralGrey900,
    Color? neutralGrey950,
    Color? textIcon1,
    Color? textIcon2,
    Color? textIcon3,
    Color? textIcon4,
    Color? textIcon5,
    Color? textIcon6,
    Color? textIcon7,
    Color? textIcon8,
    Color? surface1,
    Color? surface2,
    Color? surface3,
    Color? surface4,
    Color? surface5,
    Color? surfaceFill3,
    Color? fill1,
    Color? fill2,
    Color? fill3Hover,
    Color? fill4,
    Color? fill5,
    Color? fill6,
    Color? fill7,
    Color? fill7CoaCot,
    Color? line1,
    Color? line2,
    Color? line3,
    Color? line4,
    Color? backgroundMain1,
    Color? backgroundMain2,
    Color? backgroundMain3,
    Color? backgroundOverlay1,
    Color? backgroundOverlay2Tooltip,
    Color? inputFieldBgDefault,
    Color? inputFieldBgFilledHover,
    Color? inputFieldBgDisable,
    Color? inputFieldStrokeDefault,
    Color? inputFieldStrokeFilledHover,
    Color? inputFieldStrokeDisable,
    Color? inputFieldBgError,
    Color? inputFieldStrokeError,
    Color? inputFieldStrokeDisableCheck,
    Color? docBlue,
    Color? docBlue50,
    Color? pptMagenta50,
    Color? sheetsGreen50,
    Color? webPurple50,
    Color? lightBlue50,
    Color? sheetsGreen,
    Color? webPurple500,
    Color? lightBlue,
    Color? scenePopoverBg,
    Color? scenePopoverHover,
    Color? grey60,
    Color? grey80,
    Color? grey100,
    Color? grey200,
    Color? grey300,
    Color? grey400,
    Color? grey500,
    Color? grey600,
    Color? grey700,
    Color? grey800,
    Color? grey900,
    Color? grey950,
    Color? red50,
    Color? red100,
    Color? red200,
    Color? red300,
    Color? red400,
    Color? red500,
    Color? red600,
    Color? yellow,
    Color? yellow50,
    Color? yellow100,
    Color? yellow200,
    Color? yellow300,
    Color? yellow400,
    Color? yellow500,
    Color? yellow600,
    Color? docBlue100,
    Color? docBlue200,
    Color? docBlue300,
    Color? docBlue400,
    Color? docBlue500,
    Color? docBlue600,
    Color? podcastGreen50,
    Color? podcastGreen100,
    Color? podcastGreen200,
    Color? podcastGreen300,
    Color? podcastGreen400,
    Color? podcastGreen500,
    Color? podcastGreen600,
    Color? pptMagenta100,
    Color? pptMagenta200,
    Color? pptMagenta300,
    Color? pptMagenta400,
    Color? pptMagenta500,
    Color? pptMagenta600,
    Color? webPurple100,
    Color? webPurple200,
    Color? webPurple300,
    Color? webPurple400,
    Color? webPurple600,
    Color? lightBlue100,
    Color? lightBlue200,
    Color? lightBlue300,
    Color? lightBlue400,
    Color? lightBlue500,
    Color? lightBlue600,
    Color? sheetsGreen100,
    Color? sheetsGreen200,
    Color? sheetsGreen300,
    Color? sheetsGreen400,
    Color? sheetsGreen500,
    Color? sheetsGreen600,
    Color? commercializationYellow50,
    Color? commercializationYellow100,
    Color? commercializationYellow200,
    Color? commercializationYellow300,
    Color? commercializationYellow400,
    Color? commercializationYellow500,
    Color? commercializationYellow600,
    Color? gold30,
    Color? gold60,
    Color? gold70,
    Color? otherDocCheck,
  }) {
    return MultipleThemeExtension(
      brand01Black: brand01Black ?? this.brand01Black,
      brand02White: brand02White ?? this.brand02White,
      brand03Blue: brand03Blue ?? this.brand03Blue,
      brand04Green: brand04Green ?? this.brand04Green,
      brand05Magenta: brand05Magenta ?? this.brand05Magenta,
      neutralGrey60: neutralGrey60 ?? this.neutralGrey60,
      neutralGrey80: neutralGrey80 ?? this.neutralGrey80,
      neutralGrey100: neutralGrey100 ?? this.neutralGrey100,
      neutralGrey200: neutralGrey200 ?? this.neutralGrey200,
      neutralGrey300: neutralGrey300 ?? this.neutralGrey300,
      neutralGrey400: neutralGrey400 ?? this.neutralGrey400,
      neutralGrey500: neutralGrey500 ?? this.neutralGrey500,
      neutralGrey600: neutralGrey600 ?? this.neutralGrey600,
      neutralGrey700: neutralGrey700 ?? this.neutralGrey700,
      neutralGrey800: neutralGrey800 ?? this.neutralGrey800,
      neutralGrey900: neutralGrey900 ?? this.neutralGrey900,
      neutralGrey950: neutralGrey950 ?? this.neutralGrey950,
      textIcon1: textIcon1 ?? this.textIcon1,
      textIcon2: textIcon2 ?? this.textIcon2,
      textIcon3: textIcon3 ?? this.textIcon3,
      textIcon4: textIcon4 ?? this.textIcon4,
      textIcon5: textIcon5 ?? this.textIcon5,
      textIcon6: textIcon6 ?? this.textIcon6,
      textIcon7: textIcon7 ?? this.textIcon7,
      textIcon8: textIcon8 ?? this.textIcon8,
      surface1: surface1 ?? this.surface1,
      surface2: surface2 ?? this.surface2,
      surface3: surface3 ?? this.surface3,
      surface4: surface4 ?? this.surface4,
      surface5: surface5 ?? this.surface5,
      surfaceFill3: surfaceFill3 ?? this.surfaceFill3,
      fill1: fill1 ?? this.fill1,
      fill2: fill2 ?? this.fill2,
      fill3Hover: fill3Hover ?? this.fill3Hover,
      fill4: fill4 ?? this.fill4,
      fill5: fill5 ?? this.fill5,
      fill6: fill6 ?? this.fill6,
      fill7: fill7 ?? this.fill7,
      fill7CoaCot: fill7CoaCot ?? this.fill7CoaCot,
      line1: line1 ?? this.line1,
      line2: line2 ?? this.line2,
      line3: line3 ?? this.line3,
      line4: line4 ?? this.line4,
      backgroundMain1: backgroundMain1 ?? this.backgroundMain1,
      backgroundMain2: backgroundMain2 ?? this.backgroundMain2,
      backgroundMain3: backgroundMain3 ?? this.backgroundMain3,
      backgroundOverlay1: backgroundOverlay1 ?? this.backgroundOverlay1,
      backgroundOverlay2Tooltip: backgroundOverlay2Tooltip ?? this.backgroundOverlay2Tooltip,
      inputFieldBgDefault: inputFieldBgDefault ?? this.inputFieldBgDefault,
      inputFieldBgFilledHover: inputFieldBgFilledHover ?? this.inputFieldBgFilledHover,
      inputFieldBgDisable: inputFieldBgDisable ?? this.inputFieldBgDisable,
      inputFieldStrokeDefault: inputFieldStrokeDefault ?? this.inputFieldStrokeDefault,
      inputFieldStrokeFilledHover: inputFieldStrokeFilledHover ?? this.inputFieldStrokeFilledHover,
      inputFieldStrokeDisable: inputFieldStrokeDisable ?? this.inputFieldStrokeDisable,
      inputFieldBgError: inputFieldBgError ?? this.inputFieldBgError,
      inputFieldStrokeError: inputFieldStrokeError ?? this.inputFieldStrokeError,
      inputFieldStrokeDisableCheck: inputFieldStrokeDisableCheck ?? this.inputFieldStrokeDisableCheck,
      docBlue: docBlue ?? this.docBlue,
      docBlue50: docBlue50 ?? this.docBlue50,
      pptMagenta50: pptMagenta50 ?? this.pptMagenta50,
      sheetsGreen50: sheetsGreen50 ?? this.sheetsGreen50,
      webPurple50: webPurple50 ?? this.webPurple50,
      lightBlue50: lightBlue50 ?? this.lightBlue50,
      sheetsGreen: sheetsGreen ?? this.sheetsGreen,
      webPurple500: webPurple500 ?? this.webPurple500,
      lightBlue: lightBlue ?? this.lightBlue,
      scenePopoverBg: scenePopoverBg ?? this.scenePopoverBg,
      scenePopoverHover: scenePopoverHover ?? this.scenePopoverHover,
      grey60: grey60 ?? this.grey60,
      grey80: grey80 ?? this.grey80,
      grey100: grey100 ?? this.grey100,
      grey200: grey200 ?? this.grey200,
      grey300: grey300 ?? this.grey300,
      grey400: grey400 ?? this.grey400,
      grey500: grey500 ?? this.grey500,
      grey600: grey600 ?? this.grey600,
      grey700: grey700 ?? this.grey700,
      grey800: grey800 ?? this.grey800,
      grey900: grey900 ?? this.grey900,
      grey950: grey950 ?? this.grey950,
      red50: red50 ?? this.red50,
      red100: red100 ?? this.red100,
      red200: red200 ?? this.red200,
      red300: red300 ?? this.red300,
      red400: red400 ?? this.red400,
      red500: red500 ?? this.red500,
      red600: red600 ?? this.red600,
      yellow: yellow ?? this.yellow,
      yellow50: yellow50 ?? this.yellow50,
      yellow100: yellow100 ?? this.yellow100,
      yellow200: yellow200 ?? this.yellow200,
      yellow300: yellow300 ?? this.yellow300,
      yellow400: yellow400 ?? this.yellow400,
      yellow500: yellow500 ?? this.yellow500,
      yellow600: yellow600 ?? this.yellow600,
      docBlue100: docBlue100 ?? this.docBlue100,
      docBlue200: docBlue200 ?? this.docBlue200,
      docBlue300: docBlue300 ?? this.docBlue300,
      docBlue400: docBlue400 ?? this.docBlue400,
      docBlue500: docBlue500 ?? this.docBlue500,
      docBlue600: docBlue600 ?? this.docBlue600,
      podcastGreen50: podcastGreen50 ?? this.podcastGreen50,
      podcastGreen100: podcastGreen100 ?? this.podcastGreen100,
      podcastGreen200: podcastGreen200 ?? this.podcastGreen200,
      podcastGreen300: podcastGreen300 ?? this.podcastGreen300,
      podcastGreen400: podcastGreen400 ?? this.podcastGreen400,
      podcastGreen500: podcastGreen500 ?? this.podcastGreen500,
      podcastGreen600: podcastGreen600 ?? this.podcastGreen600,
      pptMagenta100: pptMagenta100 ?? this.pptMagenta100,
      pptMagenta200: pptMagenta200 ?? this.pptMagenta200,
      pptMagenta300: pptMagenta300 ?? this.pptMagenta300,
      pptMagenta400: pptMagenta400 ?? this.pptMagenta400,
      pptMagenta500: pptMagenta500 ?? this.pptMagenta500,
      pptMagenta600: pptMagenta600 ?? this.pptMagenta600,
      webPurple100: webPurple100 ?? this.webPurple100,
      webPurple200: webPurple200 ?? this.webPurple200,
      webPurple300: webPurple300 ?? this.webPurple300,
      webPurple400: webPurple400 ?? this.webPurple400,
      webPurple600: webPurple600 ?? this.webPurple600,
      lightBlue100: lightBlue100 ?? this.lightBlue100,
      lightBlue200: lightBlue200 ?? this.lightBlue200,
      lightBlue300: lightBlue300 ?? this.lightBlue300,
      lightBlue400: lightBlue400 ?? this.lightBlue400,
      lightBlue500: lightBlue500 ?? this.lightBlue500,
      lightBlue600: lightBlue600 ?? this.lightBlue600,
      sheetsGreen100: sheetsGreen100 ?? this.sheetsGreen100,
      sheetsGreen200: sheetsGreen200 ?? this.sheetsGreen200,
      sheetsGreen300: sheetsGreen300 ?? this.sheetsGreen300,
      sheetsGreen400: sheetsGreen400 ?? this.sheetsGreen400,
      sheetsGreen500: sheetsGreen500 ?? this.sheetsGreen500,
      sheetsGreen600: sheetsGreen600 ?? this.sheetsGreen600,
      commercializationYellow50: commercializationYellow50 ?? this.commercializationYellow50,
      commercializationYellow100: commercializationYellow100 ?? this.commercializationYellow100,
      commercializationYellow200: commercializationYellow200 ?? this.commercializationYellow200,
      commercializationYellow300: commercializationYellow300 ?? this.commercializationYellow300,
      commercializationYellow400: commercializationYellow400 ?? this.commercializationYellow400,
      commercializationYellow500: commercializationYellow500 ?? this.commercializationYellow500,
      commercializationYellow600: commercializationYellow600 ?? this.commercializationYellow600,
      gold30: gold30 ?? this.gold30,
      gold60: gold60 ?? this.gold60,
      gold70: gold70 ?? this.gold70,
      otherDocCheck: otherDocCheck ?? this.otherDocCheck,
    );
  }

  @override
  ThemeExtension<MultipleThemeExtension> lerp(covariant ThemeExtension<MultipleThemeExtension>? other, double t) {
    if (other is! MultipleThemeExtension) {
      return this;
    }

    return MultipleThemeExtension(
      brand01Black: Color.lerp(brand01Black, other.brand01Black, t)!,
      brand02White: Color.lerp(brand02White, other.brand02White, t)!,
      brand03Blue: Color.lerp(brand03Blue, other.brand03Blue, t)!,
      brand04Green: Color.lerp(brand04Green, other.brand04Green, t)!,
      brand05Magenta: Color.lerp(brand05Magenta, other.brand05Magenta, t)!,
      neutralGrey60: Color.lerp(neutralGrey60, other.neutralGrey60, t)!,
      neutralGrey80: Color.lerp(neutralGrey80, other.neutralGrey80, t)!,
      neutralGrey100: Color.lerp(neutralGrey100, other.neutralGrey100, t)!,
      neutralGrey200: Color.lerp(neutralGrey200, other.neutralGrey200, t)!,
      neutralGrey300: Color.lerp(neutralGrey300, other.neutralGrey300, t)!,
      neutralGrey400: Color.lerp(neutralGrey400, other.neutralGrey400, t)!,
      neutralGrey500: Color.lerp(neutralGrey500, other.neutralGrey500, t)!,
      neutralGrey600: Color.lerp(neutralGrey600, other.neutralGrey600, t)!,
      neutralGrey700: Color.lerp(neutralGrey700, other.neutralGrey700, t)!,
      neutralGrey800: Color.lerp(neutralGrey800, other.neutralGrey800, t)!,
      neutralGrey900: Color.lerp(neutralGrey900, other.neutralGrey900, t)!,
      neutralGrey950: Color.lerp(neutralGrey950, other.neutralGrey950, t)!,
      textIcon1: Color.lerp(textIcon1, other.textIcon1, t)!,
      textIcon2: Color.lerp(textIcon2, other.textIcon2, t)!,
      textIcon3: Color.lerp(textIcon3, other.textIcon3, t)!,
      textIcon4: Color.lerp(textIcon4, other.textIcon4, t)!,
      textIcon5: Color.lerp(textIcon5, other.textIcon5, t)!,
      textIcon6: Color.lerp(textIcon6, other.textIcon6, t)!,
      textIcon7: Color.lerp(textIcon7, other.textIcon7, t)!,
      textIcon8: Color.lerp(textIcon8, other.textIcon8, t)!,
      surface1: Color.lerp(surface1, other.surface1, t)!,
      surface2: Color.lerp(surface2, other.surface2, t)!,
      surface3: Color.lerp(surface3, other.surface3, t)!,
      surface4: Color.lerp(surface4, other.surface4, t)!,
      surface5: Color.lerp(surface5, other.surface5, t)!,
      surfaceFill3: Color.lerp(surfaceFill3, other.surfaceFill3, t)!,
      fill1: Color.lerp(fill1, other.fill1, t)!,
      fill2: Color.lerp(fill2, other.fill2, t)!,
      fill3Hover: Color.lerp(fill3Hover, other.fill3Hover, t)!,
      fill4: Color.lerp(fill4, other.fill4, t)!,
      fill5: Color.lerp(fill5, other.fill5, t)!,
      fill6: Color.lerp(fill6, other.fill6, t)!,
      fill7: Color.lerp(fill7, other.fill7, t)!,
      fill7CoaCot: Color.lerp(fill7CoaCot, other.fill7CoaCot, t)!,
      line1: Color.lerp(line1, other.line1, t)!,
      line2: Color.lerp(line2, other.line2, t)!,
      line3: Color.lerp(line3, other.line3, t)!,
      line4: Color.lerp(line4, other.line4, t)!,
      backgroundMain1: Color.lerp(backgroundMain1, other.backgroundMain1, t)!,
      backgroundMain2: Color.lerp(backgroundMain2, other.backgroundMain2, t)!,
      backgroundMain3: Color.lerp(backgroundMain3, other.backgroundMain3, t)!,
      backgroundOverlay1: Color.lerp(backgroundOverlay1, other.backgroundOverlay1, t)!,
      backgroundOverlay2Tooltip: Color.lerp(backgroundOverlay2Tooltip, other.backgroundOverlay2Tooltip, t)!,
      inputFieldBgDefault: Color.lerp(inputFieldBgDefault, other.inputFieldBgDefault, t)!,
      inputFieldBgFilledHover: Color.lerp(inputFieldBgFilledHover, other.inputFieldBgFilledHover, t)!,
      inputFieldBgDisable: Color.lerp(inputFieldBgDisable, other.inputFieldBgDisable, t)!,
      inputFieldStrokeDefault: Color.lerp(inputFieldStrokeDefault, other.inputFieldStrokeDefault, t)!,
      inputFieldStrokeFilledHover: Color.lerp(inputFieldStrokeFilledHover, other.inputFieldStrokeFilledHover, t)!,
      inputFieldStrokeDisable: Color.lerp(inputFieldStrokeDisable, other.inputFieldStrokeDisable, t)!,
      inputFieldBgError: Color.lerp(inputFieldBgError, other.inputFieldBgError, t)!,
      inputFieldStrokeError: Color.lerp(inputFieldStrokeError, other.inputFieldStrokeError, t)!,
      inputFieldStrokeDisableCheck: Color.lerp(inputFieldStrokeDisableCheck, other.inputFieldStrokeDisableCheck, t)!,
      docBlue: Color.lerp(docBlue, other.docBlue, t)!,
      docBlue50: Color.lerp(docBlue50, other.docBlue50, t)!,
      pptMagenta50: Color.lerp(pptMagenta50, other.pptMagenta50, t)!,
      sheetsGreen50: Color.lerp(sheetsGreen50, other.sheetsGreen50, t)!,
      webPurple50: Color.lerp(webPurple50, other.webPurple50, t)!,
      lightBlue50: Color.lerp(lightBlue50, other.lightBlue50, t)!,
      sheetsGreen: Color.lerp(sheetsGreen, other.sheetsGreen, t)!,
      webPurple500: Color.lerp(webPurple500, other.webPurple500, t)!,
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t)!,
      scenePopoverBg: Color.lerp(scenePopoverBg, other.scenePopoverBg, t)!,
      scenePopoverHover: Color.lerp(scenePopoverHover, other.scenePopoverHover, t)!,
      grey60: Color.lerp(grey60, other.grey60, t)!,
      grey80: Color.lerp(grey80, other.grey80, t)!,
      grey100: Color.lerp(grey100, other.grey100, t)!,
      grey200: Color.lerp(grey200, other.grey200, t)!,
      grey300: Color.lerp(grey300, other.grey300, t)!,
      grey400: Color.lerp(grey400, other.grey400, t)!,
      grey500: Color.lerp(grey500, other.grey500, t)!,
      grey600: Color.lerp(grey600, other.grey600, t)!,
      grey700: Color.lerp(grey700, other.grey700, t)!,
      grey800: Color.lerp(grey800, other.grey800, t)!,
      grey900: Color.lerp(grey900, other.grey900, t)!,
      grey950: Color.lerp(grey950, other.grey950, t)!,
      red50: Color.lerp(red50, other.red50, t)!,
      red100: Color.lerp(red100, other.red100, t)!,
      red200: Color.lerp(red200, other.red200, t)!,
      red300: Color.lerp(red300, other.red300, t)!,
      red400: Color.lerp(red400, other.red400, t)!,
      red500: Color.lerp(red500, other.red500, t)!,
      red600: Color.lerp(red600, other.red600, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      yellow50: Color.lerp(yellow50, other.yellow50, t)!,
      yellow100: Color.lerp(yellow100, other.yellow100, t)!,
      yellow200: Color.lerp(yellow200, other.yellow200, t)!,
      yellow300: Color.lerp(yellow300, other.yellow300, t)!,
      yellow400: Color.lerp(yellow400, other.yellow400, t)!,
      yellow500: Color.lerp(yellow500, other.yellow500, t)!,
      yellow600: Color.lerp(yellow600, other.yellow600, t)!,
      docBlue100: Color.lerp(docBlue100, other.docBlue100, t)!,
      docBlue200: Color.lerp(docBlue200, other.docBlue200, t)!,
      docBlue300: Color.lerp(docBlue300, other.docBlue300, t)!,
      docBlue400: Color.lerp(docBlue400, other.docBlue400, t)!,
      docBlue500: Color.lerp(docBlue500, other.docBlue500, t)!,
      docBlue600: Color.lerp(docBlue600, other.docBlue600, t)!,
      podcastGreen50: Color.lerp(podcastGreen50, other.podcastGreen50, t)!,
      podcastGreen100: Color.lerp(podcastGreen100, other.podcastGreen100, t)!,
      podcastGreen200: Color.lerp(podcastGreen200, other.podcastGreen200, t)!,
      podcastGreen300: Color.lerp(podcastGreen300, other.podcastGreen300, t)!,
      podcastGreen400: Color.lerp(podcastGreen400, other.podcastGreen400, t)!,
      podcastGreen500: Color.lerp(podcastGreen500, other.podcastGreen500, t)!,
      podcastGreen600: Color.lerp(podcastGreen600, other.podcastGreen600, t)!,
      pptMagenta100: Color.lerp(pptMagenta100, other.pptMagenta100, t)!,
      pptMagenta200: Color.lerp(pptMagenta200, other.pptMagenta200, t)!,
      pptMagenta300: Color.lerp(pptMagenta300, other.pptMagenta300, t)!,
      pptMagenta400: Color.lerp(pptMagenta400, other.pptMagenta400, t)!,
      pptMagenta500: Color.lerp(pptMagenta500, other.pptMagenta500, t)!,
      pptMagenta600: Color.lerp(pptMagenta600, other.pptMagenta600, t)!,
      webPurple100: Color.lerp(webPurple100, other.webPurple100, t)!,
      webPurple200: Color.lerp(webPurple200, other.webPurple200, t)!,
      webPurple300: Color.lerp(webPurple300, other.webPurple300, t)!,
      webPurple400: Color.lerp(webPurple400, other.webPurple400, t)!,
      webPurple600: Color.lerp(webPurple600, other.webPurple600, t)!,
      lightBlue100: Color.lerp(lightBlue100, other.lightBlue100, t)!,
      lightBlue200: Color.lerp(lightBlue200, other.lightBlue200, t)!,
      lightBlue300: Color.lerp(lightBlue300, other.lightBlue300, t)!,
      lightBlue400: Color.lerp(lightBlue400, other.lightBlue400, t)!,
      lightBlue500: Color.lerp(lightBlue500, other.lightBlue500, t)!,
      lightBlue600: Color.lerp(lightBlue600, other.lightBlue600, t)!,
      sheetsGreen100: Color.lerp(sheetsGreen100, other.sheetsGreen100, t)!,
      sheetsGreen200: Color.lerp(sheetsGreen200, other.sheetsGreen200, t)!,
      sheetsGreen300: Color.lerp(sheetsGreen300, other.sheetsGreen300, t)!,
      sheetsGreen400: Color.lerp(sheetsGreen400, other.sheetsGreen400, t)!,
      sheetsGreen500: Color.lerp(sheetsGreen500, other.sheetsGreen500, t)!,
      sheetsGreen600: Color.lerp(sheetsGreen600, other.sheetsGreen600, t)!,
      commercializationYellow50: Color.lerp(commercializationYellow50, other.commercializationYellow50, t)!,
      commercializationYellow100: Color.lerp(commercializationYellow100, other.commercializationYellow100, t)!,
      commercializationYellow200: Color.lerp(commercializationYellow200, other.commercializationYellow200, t)!,
      commercializationYellow300: Color.lerp(commercializationYellow300, other.commercializationYellow300, t)!,
      commercializationYellow400: Color.lerp(commercializationYellow400, other.commercializationYellow400, t)!,
      commercializationYellow500: Color.lerp(commercializationYellow500, other.commercializationYellow500, t)!,
      commercializationYellow600: Color.lerp(commercializationYellow600, other.commercializationYellow600, t)!,
      gold30: Color.lerp(gold30, other.gold30, t)!,
      gold60: Color.lerp(gold60, other.gold60, t)!,
      gold70: Color.lerp(gold70, other.gold70, t)!,
      otherDocCheck: Color.lerp(otherDocCheck, other.otherDocCheck, t)!,
    );
  }
}

/// 扩展 BuildContext 来方便获取 Multiple 主题
extension MultipleThemeExtensionBuildContext on BuildContext {
  MultipleThemeExtension get multipleTheme {
    return Theme.of(this).extension<MultipleThemeExtension>() ?? MultipleThemeExtension.light;
  }
}
