import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../util/navigation_helper.dart';

class SimpleListCardWidget extends StatelessWidget {

  const SimpleListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  @override
  Widget build(BuildContext context) => ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: item.items?.length ?? 0,
      itemBuilder: (context, index) => GestureDetector(
            onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '', item: item, title: item.items?[index].title ?? ''),
        child: Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.all(6),
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
                    style: Theme.of(context).textTheme.titleMedium,),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 10,
                height: 10,
                color: const Color(0xFFCFA355),
              ),
            ],
          ),
        ),),
    );
}
