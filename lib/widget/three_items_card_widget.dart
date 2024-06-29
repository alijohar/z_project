import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class ThreeItemsCardWidget extends StatelessWidget {
  final ItemModel item;

  const ThreeItemsCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: item.items!
            .map((item) => Container(
                  margin: const EdgeInsets.all(8),
                  height: 110,
                  width: MediaQuery.of(context).size.width / 3.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage('assets/image/squarelist_light.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () => NavigationHelper.navigateTo(
                            context: context,
                            goto: item.goto ?? '',
                            subItem: item),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
                          child: Text(
                            textAlign: TextAlign.left,
                            item.title ?? '',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: const EdgeInsets.only(right: 16, bottom: 16),
                          width: 10,
                          height: 10,
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
