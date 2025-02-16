import 'package:flutter/material.dart';

import 'error_message_handling_page.dart';
import 'haptic_feedback_page.dart';
import 'loading_indicators_page.dart';
import 'toast_messages_page.dart';

class UserFeedbackHandlingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Feedback Handling')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToastMessagesPage()),
                );
              },
              child: Text('Toast messages and snackbars'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadingIndicatorsPage()),
                );
              },
              child: Text('Loading indicators'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ErrorMessageHandlingPage()),
                );
              },
              child: Text('Error message handling'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HapticFeedbackPage()),
                );
              },
              child: Text('Haptic feedback'),
            ),
          ],
        ),
      ),
    );
  }
}