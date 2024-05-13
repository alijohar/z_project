import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleListCardWidget extends StatelessWidget {
  const SimpleListCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Text('فاطمة في سطور',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.titleLarge),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 10,
                  height: 10,
                  color: Colors.yellow[600],
                ),
              ],
            ),
          );
        });
  }
}
