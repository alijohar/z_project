import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';
import 'common_style.dart';

class MultiDarkCardWidget extends StatelessWidget {
  const MultiDarkCardWidget({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) => BaseCardWidget(
        height: 90,
        margin: const EdgeInsets.symmetric(vertical: 6),
        // Vertical margin between list items
        padding: const EdgeInsets.symmetric(horizontal: 8),
        imageAsset: 'assets/image/singledark.jpg',
        withBorder: true,
        borderThickness: 1.0,

        child: Row(
          children: item.items?.map((subItem) {
                int index = item.items!.indexOf(subItem);
                bool isLastItem = index == item.items!.length - 1;
                return Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => NavigationHelper.navigateTo(
                            context: context,
                            subItem: subItem,
                            goto: subItem.goto ?? '',
                            item: item,
                            title: subItem.title ?? '',
                          ),
                          child: Text(
                            subItem.title ?? '',
                            textAlign: TextAlign.center,
                            style: CommonStyles.titleTextStyle(context,
                                color: const Color(0xFFa0a0af)),
                          ),
                        ),
                      ),
                      if (!isLastItem)
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 5,
                        ),
                    ],
                  ),
                );
              }).toList() ??
              [],
        ),
      );
}
