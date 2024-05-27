import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class SimpleListCardWidget extends StatelessWidget {
  final ItemModel item;

  const SimpleListCardWidget({super.key, required this.item});

  @override
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: item.items?.length ?? 0,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '', item: item, title: item.items?[index].title ?? ''),
        child: Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(item.items?[index].title ?? '',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 10,
                height: 10,
                color: Colors.yellow[600],
              ),
            ],
          ),
        ));
      },
    );
  }
}
