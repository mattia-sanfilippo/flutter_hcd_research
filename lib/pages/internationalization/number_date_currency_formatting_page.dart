import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberDateCurrencyFormattingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    String localeString = locale.languageCode;
    NumberFormat numberFormat = NumberFormat.decimalPattern(localeString);
    DateFormat dateFormat = DateFormat.yMMMMEEEEd(localeString);
    NumberFormat currencyFormat = NumberFormat.currency(locale: localeString, symbol: '€');
    
    return Scaffold(
      appBar: AppBar(title: Text('Number, date, currency formatting')),
      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number: ${numberFormat.format(1234567.89)}'),
            Text('Date: ${dateFormat.format(DateTime.now())}'),
            Text('Currency: ${currencyFormat.format(1000)}'),
          ],
        ),
      ),
    );
  }
}