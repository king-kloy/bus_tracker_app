import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// map import
import '../map/MapSample.dart';

class StudentPage extends StatefulWidget {
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("studentName"),
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
      body: MapSample(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  // list of bottom navigation items
  final List<BottomNavigationBarItem> bottomNavigationItems = [];

  void _showBusInfo(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('School'),
                  trailing: Text('mySchool'),
                ),
                ListTile(
                  leading: Icon(Icons.supervised_user_circle),
                  title: Text('Driver'),
                  trailing: Text('myDriver'),
                ),
                ListTile(
                  leading: Icon(Icons.directions_bus),
                  title: Text('Bus Number'),
                  trailing: Text('AS-123'),
                ),
                ListTile(
                  leading: Icon(Icons.confirmation_number),
                  title: Text('License'),
                  trailing: Text('123-456-789'),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('School Contact'),
                  trailing: Text('987456123'),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Driver Contact'),
                  trailing: Text('123456789'),
                )
              ],
            ),
          );
        });
  }

  void _showStatus(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
              body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  '< 23rd September 2019 >',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 25),
                  Text('Monday', style: TextStyle(fontSize: 18.0)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.my_location, color: Colors.deepOrange,),
                title: Text(
                  'Pick Up Time',
                  style: TextStyle(fontSize: 18.0),
                ),
                trailing: Text(
                  '9:30 am',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 25),
                  Text('|', style: TextStyle(fontSize: 18.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 25),
                  Text('|', style: TextStyle(fontSize: 18.0)),
                ],
              ),
              ListTile(
                leading: Icon(Icons.place, color: Colors.deepOrange,),
                title: Text(
                  'Drop Time',
                  style: TextStyle(fontSize: 18.0),
                ),
                trailing: Text(
                  '4:00pm',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ));
        });
  }

  BottomBar() {
    bottomNavigationItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.location_on),
        title: Text('Location', style: TextStyle(fontSize: 18.0))));

    bottomNavigationItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.directions_bus),
        title: Text('Bus', style: TextStyle(fontSize: 18.0))));

    bottomNavigationItems.add(BottomNavigationBarItem(
        icon: Icon(Icons.calendar_view_day),
        title: Text('Status', style: TextStyle(fontSize: 18.0))));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationItems,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == 1) {
          _showBusInfo(context);
        } else if (index == 2) {
          _showStatus(context);
        }
      },
    );
  }
}
