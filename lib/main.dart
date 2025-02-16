import 'package:flutter/material.dart';

import 'pages/accessibility/accessibility_page.dart';
import 'pages/internationalization/internationalization_page.dart';
import 'pages/touch_gestures/touch_gestures_page.dart';
import 'pages/ui_customization/ui_customization_page.dart';
import 'pages/user_feedback/user_feedback_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: MainPage(),
    );
  }
  
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccessibilityPage()),
                );
              },
              child: Text('Accessibility'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UICustomizationPage()),
                );
              },
              child: Text('UI Customization'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserFeedbackHandlingPage()),
                );
              },
              child: Text('User Feedback Handling'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TouchGesturesPage()),
                );
              },
              child: Text('Touch Gestures'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InternationalizationPage()),
                );
              },
              child: Text('Internationalization'),
            ),
          ],
        ),
      ),
    );
  }
}