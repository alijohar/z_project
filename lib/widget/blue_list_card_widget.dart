import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../util/dodecagon_clipper.dart';
import '../util/navigation_helper.dart';

class BlueListCardWidget extends StatelessWidget {
  final List<SubItems>? items;

  const BlueListCardWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjusted for better visibility of the hexagon
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: items?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: items?[index], goto: items?[index].goto ?? '',),
          child: ClipPath(
            clipper: DodecagonClipper(),  // Applying the custom clipper for hexagon shape
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              color: Theme.of(context).colorScheme.onPrimary,
              alignment: Alignment.center,
              child: Container(
                color: Colors.blue,
                width: 300,
                height: 300,

              child: Center(
                child: Text(
                  items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ),
            ),
          ));
        },
      ),
    );
  }
}