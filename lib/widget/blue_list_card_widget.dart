import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../util/dodecagon_clipper.dart';
import '../util/navigation_helper.dart';

class BlueListCardWidget extends StatelessWidget {

  const BlueListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => Container(
      height: 100, // Adjusted for better visibility of the hexagon
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: item.items?.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '', item: item, title: item.items?[index].title ?? ''),
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
                  item.items?[index].title??'',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ),
            ),
          ),),
      ),
    );
}