import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';


class NavigationHelper {
  static void navigateTo({ItemModel? item, SubItems? subItem, required BuildContext context, required String goto}) {
    if (goto == 'text'){
      navigateToEpub(item!, context);

    }else if (goto == 'jsonGraphic'){

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('it must open jsonGraphic from jsonGraphic.json')),
      );
    }else if (goto == 'jsonList'){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('it must open toc from jsonList.json')),
      );
    }
  }

  static void navigateToEpub(ItemModel item, BuildContext context) {
    String? bookPath = item.linkTo?.key?.split('_').first;
    String? sectionName = item.linkTo?.key?.split('_').last;
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('it must open $bookPath name and go to $sectionName')),
    );
  }


}