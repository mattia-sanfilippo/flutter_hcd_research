import 'package:flutter/material.dart';

class DynamicTextScalingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic text scaling')),
      body: Center(child: Text('Dynamic text scaling content (text scales automatically based on system settings)')),
    );
  }
}