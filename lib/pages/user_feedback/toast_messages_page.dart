import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToastMessagesPage extends StatelessWidget {

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('This is a snackbar'),
      duration: Duration(seconds: 2),
      action: SnackBarAction(label: 'Undo', onPressed: () {}),
    ));
  }


  void _showAlert(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text('Alert'),
          content: Text('This is an alert'),
          actions: [
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Alert'),
          content: Text('This is an alert'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toast messages and snackbars')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showSnackbar(context),
              child: Text('Show snackbar'),
            ),
            ElevatedButton(
              onPressed: () => _showAlert(context),
              child: Text('Show alert'),
            ),
          ],
        ),
      ),
    );
  }
}