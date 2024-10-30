import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';

class SingleDarkCardWidget extends StatelessWidget {
  const SingleDarkCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    // Determine the background image based on the dark mode status
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final imageAsset = 'assets/image/singledark.jpg';

    return BaseCardWidget(
      height: 90,
      margin: const EdgeInsets.symmetric(vertical: 6), // Vertical margin between list items
      padding: const EdgeInsets.all(8),
      withBorder: true,
      borderThickness: 1.0,
      imageAsset: imageAsset,
      onTap: () => NavigationHelper.navigateTo(
        context: context,
        goto: item.linkTo?.goto ?? '',
        item: item,
        title: item.title ?? '',
      ),
      child: Center(
        child: Text(
          item.title ?? '',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: const Color(0xFFa0a0af),
          ),
        ),
      ),
    );
  }
}
