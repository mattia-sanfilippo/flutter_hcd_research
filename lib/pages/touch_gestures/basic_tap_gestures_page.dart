import 'package:flutter/material.dart';

class BasicTapGesturesPage extends StatelessWidget {
  void _handleSingleTap(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Single Tap Detected'),
      duration: Duration(seconds: 2),
    ));
  }

  void _handleDoubleTap(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Double Tap Detected'),
      duration: Duration(seconds: 2),
    ));
  }

  void _handleLongPress(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Long Press Detected'),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic tap gestures')),
      body: Center(
        child: GestureDetector(
          onTap: () => _handleSingleTap(context),
          onDoubleTap: () => _handleDoubleTap(context),
          onLongPress: () => _handleLongPress(context),
          child: Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text('Tap, Double Tap, or Long Press'),
          )
        ),
      ),
    );
  }
}