import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ParentProfilePage extends StatefulWidget {
  @override
  _ParentProfilePageState createState() => _ParentProfilePageState();
}

class _ParentProfilePageState extends State<ParentProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
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
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                height: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'assets/images/dope.jpg',
                              scale: 5.0),
                          backgroundColor: Colors.grey,
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Some Mother',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            InkWell(
                                onTap: () {
                                  _showEditProfileDialogue(context);
                                },
                                child: Icon(Icons.edit))
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("mother"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.call),
                      title: Text('+233542587'),
                    ),
                    ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('example@gmail.com'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 90, 0, 10),
              child: FloatingActionButton(
                backgroundColor: Colors.grey,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }

  _showEditProfileDialogue(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            content: Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFFFFF),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30.0,
                                backgroundImage: NetworkImage(
                                    'assets/images/dope.jpg',
                                    scale: 5.0),
                                backgroundColor: Colors.grey,
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Some Mother',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("mother"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.call),
                            title: Text('+233542587'),
                          ),
                          ListTile(
                            leading: Icon(Icons.mail),
                            title: Text('example@gmail.com'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blueAccent,
                    child: OutlineButton(
                      child: Text(
                        'Done',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
