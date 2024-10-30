import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';
import 'common_style.dart';

class SmallImageCardWidget extends StatelessWidget {
  const SmallImageCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => BaseCardWidget(
    height: 100,
    margin: const EdgeInsets.symmetric(vertical: 6), // Vertical margin between list items
    padding: const EdgeInsets.all(0),
    onTap: () => NavigationHelper.navigateTo(context: context, goto: item.linkTo?.goto ?? '', item: item, title: item.title ?? ''),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              item.title ?? '',
              style: CommonStyles.titleTextStyle(context),
            ),
          ),
        ),
        Container(
          width: 2,
          height: 84,
          margin: const EdgeInsets.all(8.0),
          color: Theme.of(context).colorScheme.primary,
        ),
        Expanded(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/image/${item.picName}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
