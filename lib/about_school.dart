import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AboutSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About School"),
        backgroundColor: Colors.deepOrange,
      ),
      body: _aboutSchool(),
    );
  }

  final String _schoolInformation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit," +
      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam," +
      "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. " +
      " Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur." +
      " Excepteur sint occaecat cupidatat non proident," +
      " sunt in culpa qui officia deserunt mollit anim id est laborum";

  //Creating a widget for the about school page
  Widget _aboutSchool() {
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints.expand(height: 200),
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bus.jpg"), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0.0,
                bottom: 0.0,
                child: Text("St. Xavier's high school",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                "History of School",
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
                textAlign: TextAlign.left,
              ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                _schoolInformation,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ],
    );
  }
}
