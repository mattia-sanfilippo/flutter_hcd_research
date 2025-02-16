import 'package:flutter/material.dart';


class ErrorMessageHandlingPage extends StatefulWidget {
  @override
  _ErrorMessageHandlingPageState createState() => _ErrorMessageHandlingPageState();
}

class _ErrorMessageHandlingPageState extends State<ErrorMessageHandlingPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print("Valid form");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Error message handling')),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _submitForm, child: Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}