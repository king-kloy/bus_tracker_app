import 'package:flutter/material.dart';

import './home_screen.dart';

void main() => runApp(
      MaterialApp(
        title: 'Flight List Mock Up',
        debugShowCheckedModeBanner: false,
        home: Screen(),
        theme: appTheme,
      ),
    );

ThemeData appTheme = ThemeData(primaryColor: Colors.deepOrange);

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}

