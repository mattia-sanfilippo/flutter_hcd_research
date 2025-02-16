import 'package:flutter/material.dart';

class ScreenReaderSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen reader support')),
      body: Semantics(
        label: 'This is a screen reader support page',
        child: Text('Screen reader support page'),
      )
    );
  }
}
