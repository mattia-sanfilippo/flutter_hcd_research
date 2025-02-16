import 'package:flutter/material.dart';

class SwipeGesturesPage extends StatelessWidget {
  final List<String> items = List.generate(5, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Swipe gestures')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            background: Container(color: Colors.red, alignment: Alignment.centerLeft, child: Icon(Icons.delete, color: Colors.white)),
            secondaryBackground: Container(color: Colors.green, alignment: Alignment.centerRight, child: Icon(Icons.check, color: Colors.white)),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${items[index]} deleted')));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${items[index]} checked')));
              }
              items.removeAt(index);
            },
            child: ListTile(title: Text(items[index])),
          );
        },
      ),
    );
  }
}
