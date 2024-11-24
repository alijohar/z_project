import 'package:flutter/material.dart';
import 'package:zahra/widget/basic_card_view.dart';

import '../main.dart';
import '../model/item_model.dart';
import '../util/dotted_broder_painter.dart';
import '../util/navigation_helper.dart';

class ThreeItemsCardWidget extends StatelessWidget {

  const ThreeItemsCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = 100.0;

    if (isMobileDevice()){
      itemWidth = MediaQuery.of(context).size.width/3.5;
    }else{
      if (screenWidth > 600) {
        itemWidth = 140;
      }
    }
    return BaseCardWidget(
    backgroundColor: Colors.transparent,
    height: 110,
    margin: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: item.items!
          .map((item) => Container(
        height: 110,
        width: itemWidth,
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
          padding: const EdgeInsets.all(6.0),
          child: CustomPaint(painter:
          DottedBorderPainter(
            borderWidth: 1.0,
            borderColor: Theme.of(context).colorScheme.onSurface,
          ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => NavigationHelper.navigateTo(
                      context: context,
                      goto: item.goto ?? '',
                      subItem: item,
                      title: item.title
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        textAlign: TextAlign.center,
                        item.title ?? '',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ))
          .toList(),
    ),
  );
  }
}
