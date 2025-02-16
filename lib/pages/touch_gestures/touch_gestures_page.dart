import 'package:flutter/material.dart';

import 'basic_tap_gestures_page.dart';
import 'drag_and_drop_page.dart';
import 'pinch_to_zoom_page.dart';
import 'swipe_gestures_page.dart';

class TouchGesturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Touch Gestures')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BasicTapGesturesPage()),
                );
              },
              child: Text('Basic tap gestures'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwipeGesturesPage()),
                );
              },
              child: Text('Swipe gestures'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DragAndDropPage()),
                );
              },
              child: Text('Drag and drop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PinchToZoomPage()),
                );
              },
              child: Text('Pinch to zoom'),
            ),
          ],
        ),
      ),
    );
  }
}