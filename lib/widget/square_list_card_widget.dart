import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

import '../util/navigation_helper.dart';

class SquareListCardWidget extends StatelessWidget {

  const SquareListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => Container(
      height: 110,
      margin: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: item.items?.length??0,
        itemBuilder: (context, index) => GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '', item: item, title: item.items?[index].title ?? ''),
          child: Container(
            width: MediaQuery.of(context).size.width / 3.7, // Slightly more space than the fixed width previously
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/image/squarelist_light.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: () => NavigationHelper.navigateTo(
                          context: context,
                          goto: item.items?[index].goto ?? '',
                          subItem: item.items?[index],),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          textAlign: TextAlign.center,
                          item.items?[index].title??'',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),),
              ],
            ),
          ),),
      ),
    );
}
