import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/util/dotted_broder_painter.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';

class SquareListCardWidget extends StatelessWidget {
  const SquareListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    // Determine the background image based on dark mode
    final imageAsset = Theme.of(context).brightness == Brightness.dark
        ? 'assets/image/squarelist_light_dark.jpg'
        : 'assets/image/squarelist_light.jpg';

    return Container(
      height: 110,
      margin: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: item.items?.length ?? 0,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => NavigationHelper.navigateTo(
            context: context,
            subItem: item.items?[index],
            goto: item.items?[index].goto ?? '',
            item: item,
            title: item.items?[index].title ?? '',
          ),
          child: BaseCardWidget(
            height: 110,
            imageAsset: imageAsset,
            padding: EdgeInsets.zero, // Customize padding to zero for each card
            margin: const EdgeInsets.symmetric(horizontal: 4), // Horizontal spacing between items
            onTap: () => NavigationHelper.navigateTo(
                context: context,
                subItem: item.items?[index],
                goto: item.items?[index].goto ?? '',
                item: item,
                title: item.items?[index].title ?? ''),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomPaint(
                painter: DottedBorderPainter(
                  borderWidth: 1.0,
                  borderColor: Theme.of(context).colorScheme.onSurface,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      item.items?[index].title ?? '',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
