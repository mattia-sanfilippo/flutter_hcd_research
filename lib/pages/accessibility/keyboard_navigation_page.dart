import 'package:flutter/material.dart';

class KeyboardNavigationPage extends StatefulWidget {
  @override
  _KeyboardNavigationPageState createState() => _KeyboardNavigationPageState();
}

class _KeyboardNavigationPageState extends State<KeyboardNavigationPage> {
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Keyboard navigation')),
      body: Column(
        children: [
          TextField(
            focusNode: focusNode1,
            decoration: InputDecoration(labelText: "Input 1"),
          ),
          TextField(
            focusNode: focusNode2,
            decoration: InputDecoration(labelText: "Input 2"),
          ),
          ElevatedButton(
            onPressed: () => FocusScope.of(context).requestFocus(focusNode1),
            child: Text('Focus on Input 1'),
          ),
          ElevatedButton(
            onPressed: () => FocusScope.of(context).requestFocus(focusNode2),
            child: Text('Focus on Input 2'),
          ),
        ]
      )
    );
  }
}