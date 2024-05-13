import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/widget/big_image_card_widget.dart';
import 'package:zahra/widget/blue_list_card_widget.dart';
import 'package:zahra/widget/circle_list_card_widget.dart';
import 'package:zahra/widget/normal_list_card_widget.dart';
import 'package:zahra/widget/single_dark_card_widget.dart';
import 'package:zahra/widget/small_image_card_widget.dart';
import 'package:zahra/widget/square_list_card_widget.dart';
import 'package:zahra/widget/three_items_card_widget.dart';

import '../../widget/simple_list_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return buildMainListItem(context, index);
            }
        ));
  }

  Widget buildMainListItem(BuildContext context, int index) {
    return CircleListCardWidget(items: ['الأدب', 'الفن', 'الثقافة', 'التاريخ']);
  }
}