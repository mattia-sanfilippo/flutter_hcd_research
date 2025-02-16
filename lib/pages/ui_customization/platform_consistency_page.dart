import 'package:flutter/material.dart';

class PlatformConsistencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TargetPlatform platform = Theme.of(context).platform;

    return Scaffold(
      appBar: AppBar(title: Text('Platform consistency')),
      body: Center(
        child: PlatformContainer(
          color: platform == TargetPlatform.android ? Colors.green : Colors.lightBlue,
          text: platform == TargetPlatform.android ? 'Android' : 'iOS',
        ),
      ),
    );
  }
}

class PlatformContainer extends StatelessWidget {
  final Color color;
  final String text;

  const PlatformContainer({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      width: 100,
      height: 100,
      child: Center(child: Text(text, style: TextStyle(color: Colors.white))),
    );
  }
}