import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

import '../util/dodecagon_clipper.dart';
import '../util/navigation_helper.dart';

class CircleListCardWidget extends StatelessWidget {
  final List<SubItems>? items;

  const CircleListCardWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjusted for better visibility of the hexagon
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: items?.length??0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: items?[index], goto: items?[index].goto ?? '',),
          child: ClipPath(
            clipper: DodecagonClipper(),  // Applying the custom clipper for hexagon shape
            child: CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                color: Theme.of(context).colorScheme.onPrimary,
                alignment: Alignment.center,
                child: Text(
                  items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          ));
        },
      ),
    );
  }
}