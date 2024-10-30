import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';

class BigImageCardWidget extends StatelessWidget {
  const BigImageCardWidget({super.key, required this.item});
  final ItemModel item;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BaseCardWidget(
      height: screenWidth>600?260:200,
    margin: const EdgeInsets.symmetric(vertical: 6), // Vertical margin between list items
      backgroundColor: Colors.transparent,
      onTap: () => NavigationHelper.navigateTo(
        context: context,
        goto: item.linkTo?.goto ?? '',
        item: item,
        title: item.title ?? '',
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          Theme.of(context).brightness == Brightness.dark && item.picName == '6.jpg'
              ? 'assets/image/6_dark.jpg'
              : 'assets/image/${item.picName}',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
