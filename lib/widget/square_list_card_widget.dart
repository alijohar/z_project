import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

import '../util/navigation_helper.dart';

class SquareListCardWidget extends StatelessWidget {
  final ItemModel item;

  const SquareListCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140, // Fixed height for the container
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: item.items?.length??0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: item.items?[index], goto: item.items?[index].goto ?? '', item: item, title: item.items?[index].title ?? ''),
          child: Container(
            width: MediaQuery.of(context).size.width / 3.5, // Slightly more space than the fixed width previously
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/image/squarelist_light.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      item.items?[index].title??'',
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge),

                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    width: 10,
                    height: 10,
                    color: Color(0xFFCFA355),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
