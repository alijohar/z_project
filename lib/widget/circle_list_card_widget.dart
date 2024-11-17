import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/dodecagon_clipper.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';
import 'common_style.dart';

class CircleListCardWidget extends StatelessWidget {
  const CircleListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return BaseCardWidget(
      backgroundColor: Colors.transparent,
      height: 120,
        margin: const EdgeInsets.symmetric(vertical: 6), // Vertical margin between list items
        padding: const EdgeInsets.all(0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.items?.length ?? 0,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => NavigationHelper.navigateTo(
            context: context,
            subItem: item.items?[index],
            goto: item.items?[index].goto ?? '',
            item: item,
            title: item.items?[index].title
          ),
          child: ClipPath(
            clipper: DodecagonClipper(),  // Applying the custom clipper for hexagon shape
            child: CustomPaint(
              child: Container(
                width: 140,
                color: const Color(0xFF2f7c9c),
                alignment: Alignment.center,
                child: Text(
                  item.items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: CommonStyles.titleTextStyle(context, color: const Color(0xFFcac37a),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
