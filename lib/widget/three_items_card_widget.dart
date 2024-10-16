import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../util/dotted_broder_painter.dart';
import '../util/navigation_helper.dart';

class ThreeItemsCardWidget extends StatelessWidget {

  const ThreeItemsCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => Container(
    alignment: Alignment.center,
    child: Row(
      children: item.items!
          .map((item) => Container(
            margin: const EdgeInsets.all(8),
            height: 110,
            width: MediaQuery.of(context).size.width / 3.7,
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
                borderColor: Colors.black45,
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
