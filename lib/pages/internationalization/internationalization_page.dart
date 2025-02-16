import 'package:flutter/material.dart';

import 'multilanguage_support_page.dart';
import 'number_date_currency_formatting_page.dart';
import 'right_to_left_layout_page.dart';

class InternationalizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Internationalization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MultiLanguageSupportPage()),
                );
              },
              child: Text('Multi-language support'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RightToLeftLayoutPage()),
                );
              },
              child: Text('Right to left layout'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumberDateCurrencyFormattingPage()),
                );
              },
              child: Text('Number, date, currency formatting'),
            ),
          ],
        ),
      ),
    );
  }
}