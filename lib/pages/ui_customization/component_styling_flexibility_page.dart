import 'package:flutter/material.dart';

class ComponentStylingFlexibilityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Component styling flexibility')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {}, 
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
            padding: WidgetStateProperty.all(EdgeInsets.all(10)),
            textStyle: WidgetStateProperty.all(TextStyle(fontSize: 20)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          ),
          child: Text('Custom styled button'),
        ),
      ),
    );
  }
}