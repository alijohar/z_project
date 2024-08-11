import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/util/epub_helper.dart';
import 'package:zahra/widget/big_image_card_widget.dart';
import 'package:zahra/widget/blue_list_card_widget.dart';
import 'package:zahra/widget/circle_list_card_widget.dart';
import 'package:zahra/widget/multi_dark_card_widget.dart';
import 'package:zahra/widget/normal_list_card_widget.dart';
import 'package:zahra/widget/single_dark_card_widget.dart';
import 'package:zahra/widget/small_image_card_widget.dart';
import 'package:zahra/widget/square_list_card_widget.dart';
import 'package:zahra/widget/three_items_card_widget.dart';

import '../model/reference_model.dart';
import '../widget/simple_list_card_widget.dart';

class NavigationHelper {
  static void navigateTo(
      {required String goto,
      ItemModel? item,
      SubItems? subItem,
      String? title,
      required BuildContext context,}) {
    switch (goto) {
      case 'text':
        navigateToEpub(subItem, item, context);
        break;
      case 'jsonGraphic':
        navigateToDetail(subItem, item, context, title);
        break;
      case 'jsonList':
        navigateToToc(subItem, item, context, title);
        break;
    }
  }

  static void navigateToToc(
      SubItems? subItem, ItemModel? item, BuildContext context, String? title,) {
    final int id = subItem?.id ?? item?.linkTo?.id ?? 0;
    Navigator.of(context).pushNamed(
      '/toc',
      arguments: {'id': id, 'item': item, 'title': title},
    );
  }

  static void navigateToDetail(
      SubItems? subItem, ItemModel? item, BuildContext context, String? title,) {
    final int id = subItem?.id ?? item?.linkTo?.id ?? 0;
    Navigator.of(context).pushNamed(
      '/detail',
      arguments: {'id': id, 'title': title},
    );
  }

  static void navigateToEpub(SubItems? subItem, ItemModel? item, BuildContext context) {
    final String? bookPath = item?.linkTo?.key?.split('_').first ?? subItem?.key?.split('_').first;
    final String? sectionName = item?.linkTo?.key?.split('_').last ?? subItem?.key?.split('_').last;
    final int sectionNumber = int.parse(sectionName ?? '0');
    final String sectionNumberString = (sectionNumber-1).toString();
    openBook(context, bookPath, sectionNumberString);
  }

  static void openBook(BuildContext context, String? bookPath, String? sectionName) {
      final bookPath0 = '$bookPath.epub';
      openEpub(context: context, reference: ReferenceModel(title: '', bookName: '',bookPath: bookPath0, navIndex: sectionName.toString()));
  }

  static Widget buildItem(BuildContext context, ItemModel item) {
    switch (item.type) {
      case 'bigimage':
        return BigImageCardWidget(item: item);
      case 'blue_list':
        return BlueListCardWidget(item: item);
      case 'circleList':
        return CircleListCardWidget(item: item);
      case 'normalList':
        return NormalListCardWidget(item: item);
      case 'singleDark':
        return SingleDarkCardWidget(item: item);
      case 'dubleLight':
        return MultiDarkCardWidget(item: item);
      case 'dubleDark':
        return MultiDarkCardWidget(item: item);
      case 'tripleDark':
        return MultiDarkCardWidget(item: item);
      case 'smallimage':
        return SmallImageCardWidget(item: item);
      case 'squareList':
        return SquareListCardWidget(item: item);
      case 'list':
        return SimpleListCardWidget(item: item);
      case 'threeitems':
        return ThreeItemsCardWidget(item: item);
      default:
        return ListTile(title: Text('Unknown item type: ${item.type}'));
    }
  }
}
