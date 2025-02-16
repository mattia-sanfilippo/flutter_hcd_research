import 'package:flutter/material.dart';

class LoadingIndicatorsPage extends StatefulWidget {

  @override
  _LoadingIndicatorsPageState createState() => _LoadingIndicatorsPageState();
}

class _LoadingIndicatorsPageState extends State<LoadingIndicatorsPage> {
  bool isLoading = false;
  
  void _loadData() {
    setState(() => isLoading = true);
    Future.delayed(Duration(seconds: 3), () {
      setState(() => isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Loading indicators')),
      body: Center(child: isLoading ? CircularProgressIndicator() : ElevatedButton(onPressed: _loadData, child: Text('Load data'))),
    );
  }
}