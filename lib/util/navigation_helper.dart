import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/widget/big_image_card_widget.dart';
import 'package:zahra/widget/blue_list_card_widget.dart';
import 'package:zahra/widget/circle_list_card_widget.dart';
import 'package:zahra/widget/multi_dark_card_widget.dart';
import 'package:zahra/widget/normal_list_card_widget.dart';
import 'package:zahra/widget/single_dark_card_widget.dart';
import 'package:zahra/widget/small_image_card_widget.dart';
import 'package:zahra/widget/square_list_card_widget.dart';
import 'package:zahra/widget/three_items_card_widget.dart';

import '../widget/simple_list_card_widget.dart';

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

  static Widget buildItem(BuildContext context, ItemModel item) {
    switch (item.type) {
      case 'bigimage':
        return BigImageCardWidget(item: item);
      case 'blue_list':
        return BlueListCardWidget(items: item.items);
      case 'circleList':
        return CircleListCardWidget(items: item.items);
      case 'normalList':
        return NormalListCardWidget(items: item.items);
      case 'singleDark':
        return SingleDarkCardWidget(item: item);
      case 'dubleLight':
        return MultiDarkCardWidget(items: item.items);
      case 'tripleDark':
        return MultiDarkCardWidget(items: item.items);
      case 'smallimage':
        return SmallImageCardWidget(item: item);
      case 'squareList':
        return SquareListCardWidget(items: item.items);
      case 'list':
        return SimpleListCardWidget(items: item.items);
      case 'threeitems':
        return ThreeItemsCardWidget(items: item.items);
      default:
        return ListTile(title: Text('Unknown item type: ${item.type}'));
    }
  }

}