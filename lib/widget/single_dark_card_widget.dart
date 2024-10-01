import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class SingleDarkCardWidget extends StatelessWidget {
  const SingleDarkCardWidget({
    super.key,
    required this.item,
  });
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    // Check if the current theme is dark or light
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      height: 90,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFdfad52)),
        image: const DecorationImage(
          image: AssetImage('assets/image/singledark.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: () => NavigationHelper.navigateTo(
          context: context,
          goto: item.linkTo?.goto ?? '',
          item: item,
          title: item.title ?? '',
        ),
        child: Text(
          item.title ?? '',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: isDarkMode ?  Theme.of(context).colorScheme.onSurface : Colors.white, // Set color based on the theme
          ),
        ),
      ),
    );
  }
}
