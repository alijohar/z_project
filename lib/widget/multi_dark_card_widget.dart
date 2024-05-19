import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/item_model.dart';

class MultiDarkCardWidget extends StatelessWidget {
  final List<ItemModel>? items;

  const MultiDarkCardWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: Colors.yellow[600]!),
        image: DecorationImage(
          image: AssetImage("assets/image/singledark.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: items
        !.map((item) => Expanded(
          child: Row(children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                item.title??'',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white),
              ),
            ),

          ]),
        ))
            .toList(),
      ),
    );
  }
}
