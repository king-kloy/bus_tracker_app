import 'package:bus_tracker_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// map imports
import '../map/MapSample.dart';

class EditLocationPage extends StatefulWidget {
  @override
  _EditLocationPageState createState() => _EditLocationPageState();
}

class _EditLocationPageState extends State<EditLocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Edit Location"),
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
      body: Stack(
        children: <Widget>[
          MapSample(),
          Column(
            children: <Widget>[
              
              Container(
                color: Colors.deepOrange,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 20.0,
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.edit_location,
                              color: Colors.deepOrange,
                            ),
                            Text("Pick Up",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 17.0,
                                )),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.place,
                            color: Colors.white,
                          ),
                          Text(
                            "Drop",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: TextField(
                    cursorColor: appTheme.primaryColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'search place...',
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 13.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  // list of bottom navigation items
  final List<BottomNavigationBarItem> bottomNavigationItems = [];

  void _showSetReminderDialogue(BuildContext context) async {
    showDialog(context: context, builder: (context) {return;});
  }

  BottomBar() {
    bottomNavigationItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.location_on),
        title: Text('Location', style: TextStyle(fontSize: 18.0))));

    bottomNavigationItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.timer),
        title: Text('Set Reminder', style: TextStyle(fontSize: 18.0))));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationItems,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == 1) {
          _showSetReminderDialogue(context);
        }
      },
    );
  }
}
