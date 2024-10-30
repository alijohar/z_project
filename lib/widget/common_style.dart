import 'package:flutter/material.dart';

class CommonStyles {
  static const EdgeInsets defaultMargin = EdgeInsets.all(8);
  static const EdgeInsets defaultPadding = EdgeInsets.all(2);
  static const double defaultContainerHeight = 110;
  static const BorderRadius defaultBorderRadius = BorderRadius.all(Radius.circular(0));
  static const double defaultBorderThickness = 0.0;

  static BoxDecoration commonBoxDecoration({
    required BuildContext context,
    Color? backgroundColor,
    String? imageAsset,
    Color? borderColor,
    double? borderRadius,
    double? borderThickness, // New parameter for custom border thickness
  }) => BoxDecoration(
    color: backgroundColor ?? Theme.of(context).colorScheme.onPrimary,
    borderRadius: BorderRadius.circular(borderRadius ?? 8),
    border: Border.all(
      color: borderColor ?? const Color(0xFFdfad52),
      width: borderThickness ?? defaultBorderThickness, // Use provided thickness
    ),
    image: imageAsset != null
        ? DecorationImage(
      image: AssetImage(imageAsset),
      fit: BoxFit.cover,
    )
        : null,
  );

  static TextStyle titleTextStyle(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(color: color) ?? const TextStyle();
  }
}
