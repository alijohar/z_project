import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/model/category_model.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/util/epub_helper.dart';

class SmallImageCardWidget extends StatelessWidget {
  final ItemModel item;

  const SmallImageCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> openEpub(context: context, cat: CategoryModel(id: 0, catId: 0, bookPath: '1.epub')),
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
                  .titleLarge),
            ),
            Container(
              width: 1,
              height: 80,
              margin: EdgeInsets.all(8.0),
              color: Theme.of(context).colorScheme.background,
            ),
            Container(
              width: MediaQuery.of(context).size.width/2,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
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
}
