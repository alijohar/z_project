import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

import '../util/dodecagon_clipper.dart';
import '../util/navigation_helper.dart';

class CircleListCardWidget extends StatelessWidget {

  const CircleListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => Container(
      height: 120, // Adjusted for better visibility of the hexagon
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: item.items?.length??0,
        itemBuilder: (context, index) => GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '',item: item),
          child: ClipPath(
            clipper: DodecagonClipper(),  // Applying the custom clipper for hexagon shape
            child: CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                color: const Color(0xFF2f7c9c),
                alignment: Alignment.center,
                child: Text(
                  item.items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: const Color(0xFFcac37a)),
                ),
              ),
            ),
          ),),
      ),
    );
}