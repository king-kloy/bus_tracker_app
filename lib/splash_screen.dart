import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenSize.height,
            width: screenSize.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 130.0),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/bus.png'),
                        height: 140.0,
                        width: 140,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'SCHOOL BUS TRACKER',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Color firstColor = Color(0xfff47d15);
Color secondColor = Color(0xffef772c);

// app theme
ThemeData appTheme = ThemeData(
  primaryColor: Color(0xfff3791a),
);
