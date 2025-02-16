import 'package:flutter/material.dart';


class PinchToZoomPage extends StatefulWidget {
  @override
  _PinchToZoomPageState createState() => _PinchToZoomPageState();
}

class _PinchToZoomPageState extends State<PinchToZoomPage> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pinch to zoom')),
      body: Center(
        child: GestureDetector(
          onScaleStart: (details) {
            _previousScale = _scale;
          },
          onScaleUpdate: (details) {
            setState(() {
              _scale = _previousScale * details.scale;
            });
          },
          child: Transform.scale(
            scale: _scale,
            child: Image.network("https://picsum.photos/200"),
          ),
        ),
      ),
    );
  }
}
