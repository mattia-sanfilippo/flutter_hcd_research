import 'package:flutter/material.dart';

class DarkModeSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dark Mode support')),
      body: Center(child: Text('Switch system theme to test dark mode')),
    );
  }
}