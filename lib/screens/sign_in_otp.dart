import 'package:flutter/material.dart';

import './home_screen.dart';

class SignInOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SignInTopPartOTP(),
              SignInBottomPartOTP(),
            ],
          ),
        ),
      );
}

Color firstColor = Color(0xfff47d15);
Color secondColor = Color(0xffef772c);

// app theme
ThemeData appTheme = ThemeData(
  primaryColor: Color(0xfff3791a),
);

class SignInTopPartOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 79.9,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/bus.png'),
                        height: 120.0,
                        width: 115,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          'SAFET',
                          style: TextStyle(
                            fontSize: 40,
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
          ),
        ],
      );
}

class SignInBottomPartOTP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInBottomPartStateOTP();
}

class _SignInBottomPartStateOTP extends State<SignInBottomPartOTP> {
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
            child: Text(
              'Please enter OTP code we have sent you',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              child: TextField(
                cursorColor: appTheme.primaryColor,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'OTP code',
                  suffixIcon: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 13.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.blueAccent,
                child: OutlineButton(
                  child: Text(
                    'Resend',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  onPressed: null,
                ),
              )),
        ],
      );
}
