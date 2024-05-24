import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TocScreen extends StatelessWidget {
  final int id;

  TocScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Toc screen')),
        body: Center(child: Text('id is $id')));
  }
}
