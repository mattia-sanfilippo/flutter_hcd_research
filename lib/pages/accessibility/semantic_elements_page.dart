import 'package:flutter/material.dart';

class SemanticElementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Semantic elements and ARIA roles')),
      body: Column(
        children: [
          Semantics(
            header: true,
            child: Text('Profile', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Semantics(
            button: true,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Save'),
            )
          )
        ],
      ),
    );
  }
}