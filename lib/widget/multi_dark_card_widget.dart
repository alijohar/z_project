import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class MultiDarkCardWidget extends StatelessWidget {
  final ItemModel item;

  const MultiDarkCardWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFdfad52)),
        image: const DecorationImage(
          image: AssetImage("assets/image/singledark.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: item.items!.map((item) {
          return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('item.goto: ${item.goto}');
                      NavigationHelper.navigateTo(
                        context: context,
                        subItem: item,
                        goto: item.goto ?? '', title: item.title ?? ''
                      );
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      item.title ?? '',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                if (item != this.item.items!.last) // Add condition to avoid adding divider after the last item
                   VerticalDivider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 5,
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
