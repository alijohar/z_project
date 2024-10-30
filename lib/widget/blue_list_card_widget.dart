import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';
import 'common_style.dart';

class BlueListCardWidget extends StatelessWidget {
  const BlueListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => BaseCardWidget(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.items?.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => NavigationHelper.navigateTo(
            context: context,
            subItem: item.items?[index],
            goto: item.items?[index].goto ?? '',
            item: item,
            title: item.items?[index].title ?? '',
          ),
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            color: Theme.of(context).colorScheme.onPrimary,
            alignment: Alignment.center,
            child: Text(
              item.items?[index].title ?? '',
              style: CommonStyles.titleTextStyle(context, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
}
