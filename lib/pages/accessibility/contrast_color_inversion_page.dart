import 'package:flutter/material.dart';

class ContrastColorInversionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contrast and color inversion')),
      body: Center(
        child: Text(
          'High Contrast Mode Test',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold, // Ensuring better contrast
            color: Colors.black, // Use colors with sufficient contrast
          ),
        ),
      ),
    );
  }
}