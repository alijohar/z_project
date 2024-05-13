import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallImageCardWidget extends StatelessWidget {
  const SmallImageCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text('فاطمة في سطور', style: Theme
                .of(context)
                .textTheme
                .titleLarge),
          ),
          const SizedBox(width: 8),
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: NetworkImage('https://picsum.photos/200/300'),
                fit: BoxFit.cover,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
