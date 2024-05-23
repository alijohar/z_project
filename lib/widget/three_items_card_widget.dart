import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class ThreeItemsCardWidget extends StatelessWidget {
  final List<SubItems>? items;

  const ThreeItemsCardWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: items!.map((item) => Container(
          margin: const EdgeInsets.all(8),
          height: 130,
          width: MediaQuery.of(context).size.width/3.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: AssetImage('assets/image/squarelist_light.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => NavigationHelper.navigateTo(context: context, goto: item.goto ?? '', subItem: item),
          child: Text(
                    textAlign: TextAlign.right,
                    item.title??'',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  )),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 10,
                  height: 10,
                  color: Colors.yellow[600],
                ),
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }

}
