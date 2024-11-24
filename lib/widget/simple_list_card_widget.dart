import 'package:flutter/material.dart';
import '../model/item_model.dart';
import '../util/navigation_helper.dart';
import 'basic_card_view.dart';

class SimpleListCardWidget extends StatelessWidget {
  const SimpleListCardWidget({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) => ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    padding: EdgeInsets.zero,
    itemCount: item.items?.length ?? 0,
    itemBuilder: (context, index) {
      final text = item.items?[index].title ?? '';

      return GestureDetector(
        onTap: () => NavigationHelper.navigateTo(
          context: context,
          subItem: item.items?[index],
          goto: item.items?[index].goto ?? '',
          item: item,
          title: item.items?[index].title ?? '',
        ),
        child: BaseCardWidget(
          height: 60, // A base height for consistency
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.right,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(
                    fontSize: calculateFontSize(context, text),
                  ),
                  maxLines: 2, // Limit to 2 lines
                  overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                width: 10,
                height: 10,
                color: const Color(0xFFCFA355),
              ),
            ],
          ),
        ),
      );
    },
  );

  // Helper function to calculate font size based on text length
  double calculateFontSize(BuildContext context, String text) {
    const double baseFontSize = 16; // Default font size
    final double maxWidth = MediaQuery.of(context).size.width - 32;

    if (text.length > 30) {
      return baseFontSize - 2; // Reduce font size for longer texts
    } else if (text.length > 50) {
      return baseFontSize - 4; // Further reduce font size
    }
    return baseFontSize;
  }
}
