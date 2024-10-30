import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class NormalListCardWidget extends StatelessWidget {
  const NormalListCardWidget({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery directly
    double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight = screenWidth > 600 ? 100 : 60;
    double itemWidth = screenWidth > 600 ? screenWidth / 4 : screenWidth / 3;

    return Container(
      height: containerHeight,
      padding: const EdgeInsets.all(6),
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
            width: itemWidth,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                item.items?[index].title ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: screenWidth > 600 ? 18 : 14, // Font size adjustment for larger screens
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
