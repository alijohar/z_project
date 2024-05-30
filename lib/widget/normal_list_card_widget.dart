import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class NormalListCardWidget extends StatelessWidget {
  final ItemModel item;

  const NormalListCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Fixed height for the container
      padding: const EdgeInsets.all(6),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: item.items?.length??0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '', item: item, title: item.items?[index].title ?? ''),
          child: Container(
            width: MediaQuery.of(context).size.width / 3.5, // Slightly more space than the fixed width previously
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFCFA355), width: 2),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),  // Top right corner
                bottomLeft: Radius.circular(20),  // Bottom left corner
              ),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                  item.items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge),
            ),
          ));
        },
      ),
    );
  }
}
