import 'package:flutter/material.dart';

class DragAndDropPage extends StatefulWidget {
  @override
  _DragAndDropPageState createState() => _DragAndDropPageState();
}

class _DragAndDropPageState extends State<DragAndDropPage> {
  Color targetColor = Colors.grey;
  Offset position = Offset(0, 0);
  Widget? droppedWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drag and drop')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Draggable<Color>(
            data: Colors.red,
            feedback: Container(width: 100, height: 100, color: Colors.blue.withOpacity(0.7)),
            childWhenDragging: Container(width: 100, height: 100, color: Colors.grey),
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
          SizedBox(height: 20),
          DragTarget<Color>(
            onAcceptWithDetails: (details) {
              setState(() {
                targetColor = details.data;
                droppedWidget = Container(width: 100, height: 100, color: details.data);
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Item successfully dropped!'),
                duration: Duration(seconds: 2),
              ));
            },
            builder: (context, candidateData, rejectedData) {
              return Container(
                width: 200,
                height: 200,
                color: targetColor,
                child: Center(
                  child: droppedWidget ?? Text('Drop here'),
                ),
              );
            },
          ),
        ],
      )
    );
  }
}
