import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';

class NormalListCardWidget extends StatelessWidget {
  final List<ItemModel>? items;

  const NormalListCardWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Fixed height for the container
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: items?.length??0,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width / 3.5, // Slightly more space than the fixed width previously
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),  // Top right corner
                bottomLeft: Radius.circular(20),  // Bottom left corner
              ),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            child: Center(
              child: Text(
                  items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge),
            ),
          );
        },
      ),
    );
  }
}
