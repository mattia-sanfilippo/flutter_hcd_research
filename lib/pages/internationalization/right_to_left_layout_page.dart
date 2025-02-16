import 'package:flutter/material.dart';

class RightToLeftLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(title: Text('Right to left layout')),
      body: Directionality(
        textDirection: locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr,
        child: Column(
          children: <Widget>[
            Text('Current locale: ${locale.languageCode}'),
            Text('This layout changes based on the current locale'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Column 1'),
                Text('Column 2'),
                Text('Column 3'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Column A'),
                Text('Column B'),
                Text('Column C'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}