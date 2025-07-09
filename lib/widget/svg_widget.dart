import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// SvgWidget 是一个用于显示 SVG 图像的 Flutter 小部件。
/// 它允许指定 SVG 图像的路径、颜色以及宽度和高度。
class SvgWidget extends StatelessWidget {
  // SVG 图像的路径
  final String svgPath;
  // 用于填充 SVG 图像的颜色
  final Color color;
  // SVG 图像的宽度，默认为 20
  final double? width;
  // SVG 图像的高度，默认为 20
  final double? height;
  final BoxFit? fit;
  const SvgWidget({
    super.key,
    required this.svgPath,
    required this.color,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    if (!svgPath.endsWith('.svg')) {
      return const SizedBox();
    }
    return SvgPicture.asset(
      svgPath,
      width: width ?? 20,
      height: height ?? 20,
      fit: fit ?? BoxFit.contain,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
