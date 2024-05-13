import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleDarkCardWidget extends StatelessWidget {
  final List<String> items;

  const SingleDarkCardWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: Colors.yellow[600]!),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/200/100"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: items
            .map((item) => Expanded(
                  child: Row(children: [
                    Text(
                      item,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 10,
                      height: 10,
                      color: Colors.yellow[600],
                    ),
                  ]),
                ))
            .toList(),
      ),
    );
  }
}
