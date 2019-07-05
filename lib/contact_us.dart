import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        backgroundColor: Colors.deepOrange,
      ),
      body: _contactUs(),
    );
  }

  //School location
  final String _schoolLocation = "St. Xavier's High School,Wa";

  //creating a widget called _contactUs for the body of the scaffold
  Widget _contactUs() {
    return ListView(
        padding: EdgeInsets.only(left:20,right: 20),
        children: <Widget>[
          Container(
//            margin: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                //Contact of school card
                Card(
                  color: Colors.white10,
                  elevation: 0.0000,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Contact",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16)),
                    subtitle: Text("0242424242",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    dense: false,
                    onTap: (){}
                  ),
                ),

                //Mail of school card
                Card(
                  color: Colors.white10,
                  elevation: 0.0000,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading: Icon(
                      Icons.mail,
                      size: 30,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Mail",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16)),
                    subtitle: Text("kofiboakye@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    dense: false,
                    onTap: (){}
                  ),
                ),
                //Location of the school card
                Card(
                  color: Colors.white10,
                  elevation: 0.0000,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading: Icon(
                      Icons.location_on,
                      size: 30,
                      color: Colors.deepOrange,
                    ),
                    title: Text("Address",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16)),
                    subtitle: Text(_schoolLocation,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    dense: false,
                    onTap: (){},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(color: Colors.black,indent: 9,),
              ),
              Column(
                 children: <Widget>[
                 Text('Or',style:TextStyle(color: Colors.deepOrange)),
                 Text("Write us Directly",style:TextStyle(color: Colors.deepOrange))
                 ],
               ),
               Expanded(
                child: Divider(color: Colors.black,),
              ),
            ],
          ),
          SizedBox(height: 5,),
          TextField(
            decoration: InputDecoration(
              hintText: "Subject",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15)
                )
              )
            ),
          ),
          SizedBox(height: 3,),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "Type your message here",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15)
                )
              )
            ),
          ),
          SizedBox(height: 2,),
          Container(
            margin: EdgeInsets.only(left:200,right: 0),
            width: 150,
   //         height: 35,
            child:ButtonTheme(
              minWidth: 16,
            child:RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),  
            child: Text("Submit", style: TextStyle(color: Colors.white),),
            elevation: 4.0,
            onPressed: (){},
            color: Colors.blue,
            splashColor: Colors.lightBlue,
          )
          )),
        ],
      );
  }
}
