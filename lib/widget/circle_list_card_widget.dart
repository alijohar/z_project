import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/dodecagon_clipper.dart';

class CircleListCardWidget extends StatelessWidget {
  final List<String> items;

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
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ClipPath(
            clipper: DodecagonClipper(),  // Applying the custom clipper for hexagon shape
            child: CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                color: Theme.of(context).colorScheme.onPrimary,
                alignment: Alignment.center,
                child: Text(
                  items[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}