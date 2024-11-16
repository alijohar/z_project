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
    double screenWidth = MediaQuery.of(context).size.width;

    // Determine the background image based on dark mode
    final imageAsset = Theme.of(context).brightness == Brightness.dark
        ? 'assets/image/squarelist_light_dark.jpg'
        : 'assets/image/squarelist_light.jpg';

    return BaseCardWidget(
      height: 110,
      margin: const EdgeInsets.symmetric(vertical: 6), // Vertical margin between list items
      padding: const EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      child: Container(
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

            child: Container(
              margin: EdgeInsets.only(left: 8),
              height: 110,
              width: screenWidth>600? 140:120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(
                    Theme.of(context).brightness == Brightness.dark
                        ? 'assets/image/squarelist_light_dark.jpg'
                        : 'assets/image/squarelist_light.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
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
      ),
    );
  }
}
