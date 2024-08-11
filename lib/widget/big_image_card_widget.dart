import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

import '../util/navigation_helper.dart';

class BigImageCardWidget extends StatelessWidget {
  const BigImageCardWidget({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => NavigationHelper.navigateTo(
            context: context,
            goto: item.linkTo?.goto ?? '',
            item: item,
            title: item.title ?? ''),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            // Apply the same radius here
            child: Image.asset(
              'assets/image/${item.picName}' ?? '',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}
