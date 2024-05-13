import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigImageCardWidget extends StatelessWidget {
  const BigImageCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26), // Apply the same radius here
        child: Image.network(
          'https://picsum.photos/400/300',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
