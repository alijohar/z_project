import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:zahra/model/item_model.dart';

class JsonRepository {
  Future<List<ItemModel>> fetchItems() async {
    final String response = await rootBundle.loadString('assets/json/main.json');
    final List<dynamic> data = json.decode(response) as List<dynamic>;

    return data.map((item) {
      return ItemModel.fromJson(item as Map<String, dynamic>);
    }).toList();
  }

  Future<List<DetailItem>> fetchDetailItems() async {
    final String response = await rootBundle.loadString('assets/json/jsonGraphic.json');
    final List<dynamic> data = json.decode(response) as List<dynamic>;

    return data.map((item) {
      return DetailItem.fromJson(item as Map<String, dynamic>);
    }).toList();
  }

  Future<List<ItemModel>> fetchDetailItemsById(int id) async {
      final allDetailItem = await fetchDetailItems();
      final detailItem = allDetailItem.firstWhere((element) => element.id == id);
      return detailItem.items;
  }
}
