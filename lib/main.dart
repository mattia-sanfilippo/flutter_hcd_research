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
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        brightness: Brightness.light,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18),
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 24, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
          bodySmall: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        brightness: Brightness.dark,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 18),
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 24, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
          bodySmall: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.system,
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