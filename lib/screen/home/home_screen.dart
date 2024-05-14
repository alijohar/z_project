import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zahra/screen/home/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:zahra/widget/big_image_card_widget.dart';
import 'package:zahra/widget/blue_list_card_widget.dart';
import 'package:zahra/widget/circle_list_card_widget.dart';
import 'package:zahra/widget/normal_list_card_widget.dart';
import 'package:zahra/widget/single_dark_card_widget.dart';
import 'package:zahra/widget/small_image_card_widget.dart';
import 'package:zahra/widget/square_list_card_widget.dart';
import 'package:zahra/widget/three_items_card_widget.dart';

import '../../model/item_model.dart';
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
    context.read<HomeCubit>().fetchItems();

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: Text('Tap to start fetching...')),
            loading: () => const CircularProgressIndicator(),
            loaded: (items) => ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildItem(context, items[index]);
              },
            ),
            error: (message) {
              print('error is $message');
              return Center(child: Text(message));
            },
          );
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context, ItemModel item) {
    switch (item.type) {
      case 'bigimage':
        return BigImageCardWidget(item: item);
      case 'blue_list':
        return BlueListCardWidget(items: item.items);
      case 'circle_list':
        return CircleListCardWidget(items: item.items);
      case 'normal_list':
        return NormalListCardWidget(items: item.items);
      case 'singleDark':
        return SingleDarkCardWidget(items: item.items);
      case 'dubleLight':
        return SingleDarkCardWidget(items: item.items);
      case 'tripleDark':
        return SingleDarkCardWidget(items: item.items);
      case 'smallimage':
        return SmallImageCardWidget(item: item);
      case 'square_list':
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