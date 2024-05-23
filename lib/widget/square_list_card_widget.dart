import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

import '../util/navigation_helper.dart';

class SquareListCardWidget extends StatelessWidget {
  final List<SubItems>? items;

  const SquareListCardWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130, // Fixed height for the container
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: items?.length??0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: ()=> NavigationHelper.navigateTo(context: context, subItem: items?[index], goto: items?[index].goto ?? '',),
          child: Container(
            width: MediaQuery.of(context).size.width / 3.5, // Slightly more space than the fixed width previously
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200/100"),
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
                      items?[index].title??'',
                      textAlign: TextAlign.right,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge),

                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    width: 10,
                    height: 10,
                    color: Colors.yellow[600],
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
