import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/dodecagon_clipper.dart';

class BlueListCardWidget extends StatelessWidget {
  final List<String> items;

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
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ClipPath(
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
                  items[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ),
            ),
          );
        },
      ),
    );
  }
}