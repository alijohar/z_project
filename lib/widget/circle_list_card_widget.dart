import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';
import 'common_style.dart';

class CircleListCardWidget extends StatelessWidget {
  const CircleListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return BaseCardWidget(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.items?.length ?? 0,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => NavigationHelper.navigateTo(
            context: context,
            subItem: item.items?[index],
            goto: item.items?[index].goto ?? '',
            item: item,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            color: const Color(0xFF2f7c9c),
            alignment: Alignment.center,
            child: Text(
              item.items?[index].title ?? '',
              textAlign: TextAlign.center,
              style: CommonStyles.titleTextStyle(context, color: const Color(0xFFcac37a)),
            ),
          ),
        ),
      ),
    );
  }
}
