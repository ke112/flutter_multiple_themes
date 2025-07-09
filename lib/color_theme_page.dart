import 'package:flutter/material.dart';
import 'package:flutter_multiple_themes/widget/svg_widget.dart';
import 'package:get/get.dart';

import 'theme/multiple_theme_color.dart';
import 'theme/multiple_theme_service.dart';

class ColorThemePage extends StatelessWidget {
  const ColorThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.backgroundMain2,
      appBar: buildAppBar(context),
      body: _buildContent(),
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text('外观', style: TextStyle(color: ThemeColor.textIcon1)),
      backgroundColor: ThemeColor.backgroundMain2,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SizedBox.square(
          dimension: 25,
          child: SvgWidget(
            svgPath: 'assets/svg/navigation_back.svg',
            color: ThemeColor.brand01Black,
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    MultipleThemeService themeService = Get.find<MultipleThemeService>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Expanded(
            child: _buildListView(themeService),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              '''
如果只有跟随系统、浅色模式、暗色模式需求, 直接 MultipleThemeManager.availableThemes 保留 .system .light .dark 三个主题即可

绿色、红色、紫色主题为copy的浅色模式, 本方案支持多主题需求,自行修改 MultipleThemeExtension 下的 .green .red .purple 属性即可
              '''
                  .trim(),
              style: TextStyle(
                color: ThemeColor.textIcon2,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListView(MultipleThemeService themeService) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: themeService.availableThemes.length,
      itemBuilder: (BuildContext context, int index) {
        final theme = themeService.availableThemes[index];
        BorderRadius? borderRadius;
        if (index == 0) {
          borderRadius = const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16));
        } else if (index == themeService.availableThemes.length - 1) {
          borderRadius = const BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16));
        }
        return InkWell(
          onTap: () async {
            themeService.setTheme(theme.id);
          },
          child: Stack(
            children: [
              Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: ThemeColor.fill5,
                  borderRadius: borderRadius,
                ),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgWidget(svgPath: theme.icon, color: ThemeColor.brand01Black),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        theme.name,
                        style: TextStyle(color: ThemeColor.textIcon1),
                      ),
                    ),
                    themeService.isThemeSelected(theme)
                        ? SvgWidget(
                            svgPath: 'assets/svg/color_theme_selected.svg',
                            color: ThemeColor.brand01Black,
                            width: 20,
                            height: 20,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
              Container(
                color: ThemeColor.fill5,
                child: Container(
                  height: 0.5,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  color: ThemeColor.line4,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
