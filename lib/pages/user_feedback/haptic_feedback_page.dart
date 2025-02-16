import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HapticFeedbackPage extends StatelessWidget {

  void _triggerHapticFeedback() {
    HapticFeedback.lightImpact();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Haptic feedback')),
      body: Center(child: ElevatedButton(onPressed: _triggerHapticFeedback, child: Text('Trigger haptic feedback'))),
    );
  }
}