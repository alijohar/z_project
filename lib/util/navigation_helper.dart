import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';


class NavigationHelper {
  static void navigateTo({required String goto, ItemModel? item, SubItems? subItem, required BuildContext context}) {
    switch (goto) {
      case 'text':
        navigateToEpub(item, context);
        break;
      case 'jsonGraphic':
        navigateToDetail(subItem, item, context);
        break;
      case 'jsonList':
        navigateToToc(subItem, item, context);
        break;
    }
  }

  static void navigateToToc(SubItems? subItem, ItemModel? item, BuildContext context) {
    int id = subItem?.id ?? item?.linkTo?.id ?? 0;
    Navigator.of(context).pushNamed('/toc', arguments: id);
  }

  static void navigateToDetail(SubItems? subItem, ItemModel? item, BuildContext context) {
    int id = subItem?.id ?? item?.linkTo?.id ?? 0;
    Navigator.of(context).pushNamed('/detail', arguments: id);

  }

  static void navigateToEpub(ItemModel? item, BuildContext context) {
    String? bookPath = item?.linkTo?.key?.split('_').first;
    String? sectionName = item?.linkTo?.key?.split('_').last;
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('it must open $bookPath name and go to $sectionName')),
    );
  }


}