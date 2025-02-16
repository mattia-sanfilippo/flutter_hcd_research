import 'package:flutter/material.dart';
import 'screen_reader_support_page.dart';
import 'semantic_elements_page.dart';
import 'dynamic_text_scaling_page.dart';
import 'contrast_color_inversion_page.dart';
import 'keyboard_navigation_page.dart';
import 'focus_management_page.dart';

class AccessibilityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accessibility')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenReaderSupportPage()),
                );
              },
              child: Text('Screen reader support'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SemanticElementsPage()),
                );
              },
              child: Text('Semantic elements and ARIA roles'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DynamicTextScalingPage()),
                );
              },
              child: Text('Dynamic text scaling'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContrastColorInversionPage()),
                );
              },
              child: Text('Contrast and color inversion'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KeyboardNavigationPage()),
                );
              },
              child: Text('Keyboard navigation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FocusManagementPage()),
                );
              },
              child: Text('Focus management'),
            ),
          ],
        ),
      ),
    );
  }
}