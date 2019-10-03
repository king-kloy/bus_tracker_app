import 'dart:io';

import 'package:bus_tracker_app/screens/about_school.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// import './sign_in.dart';
// import './sign_in_otp.dart';
import './parent_profile_screen.dart';
import './edit_location_screen.dart';
import './settings.dart';
import './about_school.dart';
import './contact_us.dart';
import './student_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentProfilePic = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Row(children: <Widget>[
                Spacer(),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                )
              ]),
              
              accountName: Text("kloy"),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => HomePage()));
                }),
            ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.verified_user),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ParentProfilePage()));
                }),
            ListTile(
                title: Text("Edit Location"),
                leading: Icon(Icons.edit_location),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => EditLocationPage()));
                }),
            ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SettingsPage()));
                }),
            ListTile(
                title: Text("About School"),
                leading: Icon(Icons.school),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AboutSchool()));
                }),
            ListTile(
                title: Text("Contact Us"),
                leading: Icon(Icons.contacts),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ContactUs()));
                }),
            Divider(),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
              onTap: () => exit(0),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: childrenCards,
        ),
      ),
    );
  }
}

// List of children a parent has registered to show on the homepage
// with their current location
List<ChildrenCard> childrenCards = [
  ChildrenCard(
      'assets/dope.jpg', 'studentName', 'studentSchool', 'studentStatus'),
  ChildrenCard(
      'assets/dope.jpg', 'studentName', 'studentSchool', 'studentStatus')
];

class ChildrenCard extends StatelessWidget {
  final String imagePath, studentName, studentSchool, studentStatus;

  ChildrenCard(
      this.imagePath, this.studentName, this.studentSchool, this.studentStatus);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => StudentPage()));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            elevation: 10.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 370.0,
                  width: 500.0,
                  child: Image(
                    image: AssetImage('assets/dope.jpg'),
                    height: 200.0,
                    width: 150,
                  ),
                ),
                Column(
                  children: <Widget>[
                    // SizedBox(height: 20.0,),
                    Container(
                      padding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                studentName,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Colors.grey,
                                height: 10.0,
                              ),
                              Text(
                                studentSchool,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_circle,
                                color: Colors.yellow,
                              ),
                              Text(
                                studentStatus,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
