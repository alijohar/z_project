import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class SingleDarkCardWidget extends StatelessWidget {
  final ItemModel item;

  const SingleDarkCardWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFdfad52)),
        image: DecorationImage(
          image: AssetImage("assets/image/singledark.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: () => NavigationHelper.navigateTo(context: context, goto: item.linkTo?.goto ?? '', item: item, ),
    child: Text(
        textAlign: TextAlign.center,
        item.title??'',
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.white),
      ),));
  }
}
