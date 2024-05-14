import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:zahra/model/item_model.dart';

class JsonRepository {
  Future<List<ItemModel>> fetchItems() async {
    final String response = await rootBundle.loadString('assets/json/main.json');
    final List<dynamic> data = json.decode(response) as List<dynamic>;

    // Log the raw data to see what's being parsed
    print('Raw data: $data');

    return data.map((item) {
      print('Processing item: $item'); // Log each item being processed
      return ItemModel.fromJson(item as Map<String, dynamic>);
    }).toList();
  }
}
