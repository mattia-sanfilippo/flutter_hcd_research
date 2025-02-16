import 'package:flutter/material.dart';

import 'component_styling_flexibility_page.dart';
import 'dark_mode_support_page.dart';
import 'global_theming_support_page.dart';
import 'platform_consistency_page.dart';

class UICustomizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Customization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GlobalThemingSupportPage()),
                );
              },
              child: Text('Global theming support'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DarkModeSupportPage()),
                );
              },
              child: Text('Dark Mode support'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComponentStylingFlexibilityPage()),
                );
              },
              child: Text('Component styling flexibility'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlatformConsistencyPage()),
                );
              },
              child: Text('Platform consistency vs adaptation'),
            ),
          ],
        ),
      ),
    );
  }
}
