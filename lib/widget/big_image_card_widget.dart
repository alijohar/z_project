import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/model/item_model.dart';

class BigImageCardWidget extends StatelessWidget {
  final ItemModel item;
  const BigImageCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26), // Apply the same radius here
        child: Image.asset(
          item.picName??'',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
