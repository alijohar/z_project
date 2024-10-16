import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/util/navigation_helper.dart';

class SmallImageCardWidget extends StatelessWidget {

  const SmallImageCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => NavigationHelper.navigateTo(context: context, goto: item.linkTo?.goto ?? '', item: item, title: item.title ?? ''),
      child: Container(
      
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(item.title??'', style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,),
            ),
            Container(
              width: 2,
              height: 84,
              margin: const EdgeInsets.all(8.0),
              color: Theme.of(context).colorScheme.primary,
            ),
            Container(
              width: MediaQuery.of(context).size.width/2,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),  // Top right corner
                  bottomRight: Radius.circular(8),  // Bottom left corner
                ),
                image: DecorationImage(
                  image: AssetImage('assets/image/${item.picName}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        ),
      ),
    );
}
