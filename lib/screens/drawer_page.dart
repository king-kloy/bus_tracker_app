import 'package:flutter/material.dart';
import 'settings.dart';
import 'about_school.dart';
import 'contact_us.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
      child:ListView(
      children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: Text("Kofi Boakye"),
          accountEmail: Text("kofi@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Theme.of(context).platform == TargetPlatform.iOS 
            ? Colors.blue
            : Colors.white,
          ),
        ),
        ListTile(
          title: Text("Home"),
          leading: Icon(Icons.home),
          onTap: (){
            //will be implemented later by kloy
          },
        ),
        ListTile(
          title: Text("Profile"),
          leading: Icon(Icons.person),
          onTap: (){
            //wiill be implemented later by Kloy
          }
        ),
        ListTile(
          title: Text("Edit Location"),
          leading: Icon(Icons.location_on),
          onTap: (){
             //wiill be implemented later by Kloy
          }
        ),
        ListTile(
          title: Text("Settings"),
          leading: Icon(Icons.settings),
          onTap: (){
            //navigate to the Settings section of the app
            Navigator.push(context,
             new MaterialPageRoute(builder: (context) => new SettingsPage()));
          }
        ),
        ListTile(
          title: Text("About School"),
          leading: Icon(Icons.school),
          onTap: (){
            //navigate to the AboutSchool section of the app
            Navigator.push(context,
             new MaterialPageRoute(builder: (context) => new AboutSchool()));
          }
        ),
        ListTile(
          title: Text("Contact Us"),
          leading: Icon(Icons.phone),
          onTap: (){
            //navigate to the contact us activity of the app
            Navigator.push(context,
             new MaterialPageRoute(builder: (context) => new ContactUs()));
          }
        )
      ],
      ),
    ));
  }
}

