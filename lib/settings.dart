import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.deepOrange,
        ),
        body: _settingsPage(),
//        margin: EdgeInsets.all(10),
    );
}
    Widget _settingsPage(){
      return Container(
        child: Column(
          children: <Widget>[
            //Remainder text in settings page
            Container(
              margin: EdgeInsets.all(10),
              child:Column(
                children: <Widget>[
                  Row(
              children: <Widget>[
                Text(
                  "Remainder",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 16),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                //Pick up remainder section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Pick up Remainder",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Change", style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text("Currently 1.0km before pick up spot")
                  ],
                )
              ],
            ),
            //Drop remainder section of settings page
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Drop  Remainder",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Change", style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[Text("Currently 1.0km before drop spot")],
                ),
                //placing a horizontal divider
                //Using a sizedBox to space the text from the horizontal line
                SizedBox(height: 10),
                Divider(color: Colors.black,indent: 2,),
                SizedBox(height: 10),
              ], 
              ),
            //Notification settings section
            Container(
              margin: EdgeInsets.only(left:10,right: 10),
              child: Column(
                children: <Widget>[
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Set notification alert",
                    style: TextStyle(color: Colors.deepOrange)),
                Text("Select all", style: TextStyle(color: Colors.blue))
              ],
            ),
            SizedBox(height: 15),
                ],
              ),
            ),
            
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {},
              value: false,
              title: Text(
                "Pick up notification",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "When bus get to pickup remainder spot",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {},
              value: false,
              title: Text(
                "Drop  notification",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "When bus gets to drop remainder spot",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {},
              value: false,
              title: Text(
                "Reached at school",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Hangouts video call",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {},
              value: false,
              title: Text(
                "Left from school",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Also notify when receiving invites",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        )
  
      )
    ]
    )
    );
}
}
