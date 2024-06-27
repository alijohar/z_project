import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: <Widget>[
          // Full screen background SVG
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/images/bk_large.svg', // Replace with your SVG file path
              fit: BoxFit.cover,
            ),
          ),
          // Content at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                // Add decoration if needed
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    height: 100,
                    width: 300,
                    'assets/image/1.jpg', // Replace with your image file path
                    // Set size as needed
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "تطبيق فاطمة الزهراء، بنت النبي",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.background),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'يتضمن هذا التطبيق أحدث وأكمل الکتب الدينية المتعلقة بالأعمال الشرعية.',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).colorScheme.background),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
