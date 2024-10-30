import 'package:flutter/material.dart';
import 'common_style.dart';

class BaseCardWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color? backgroundColor;
  final String? imageAsset;
  final VoidCallback? onTap;
  final bool withBorder; // Enables/disables border
  final double borderThickness; // Sets border thickness

  const BaseCardWidget({
    Key? key,
    required this.child,
    this.height = CommonStyles.defaultContainerHeight,
    this.margin = CommonStyles.defaultMargin,
    this.padding = CommonStyles.defaultPadding,
    this.backgroundColor,
    this.imageAsset,
    this.onTap,
    this.withBorder = false, // Default is false for no border
    this.borderThickness = 1.0, // Default thickness if border is enabled
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    double additionalHorizontalMargin = (!isLandscape && screenWidth > 600)
        ? (screenWidth - 600) / 2
        : 0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        margin: isLandscape
            ? margin
            : margin.add(EdgeInsets.symmetric(horizontal: additionalHorizontalMargin)),
        padding: padding,
        decoration: CommonStyles.commonBoxDecoration(
          backgroundColor: backgroundColor,
          context: context,
          imageAsset: imageAsset,
          borderColor: withBorder ? null: Theme.of(context).colorScheme.primary,
          borderThickness: withBorder ? borderThickness : 0, // Apply thickness if border is enabled
        ),
        child: child,
      ),
    );
  }
}
