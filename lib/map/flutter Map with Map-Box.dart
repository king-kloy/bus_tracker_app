import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OurGeoLocation extends StatefulWidget {
final double latt,lngg;
final navigate;
OurGeoLocation(this.latt,this.lngg,{this.navigate});

  _OurGeoLocationState createState() => _OurGeoLocationState();
}

class _OurGeoLocationState extends State<OurGeoLocation> {
String apiToken = "api key goes here";
double userZoom = 15.0;
SharedPreferences sPrefs;

String theHotelsName;
////////////////return hotel name for display ///////////////////////////
toReturnHotelName()async{
sPrefs = await SharedPreferences.getInstance();
theHotelsName = (sPrefs.getString('hdisplayName')??'');
setState(() {
  //getHotel;
  theHotelsName = (sPrefs.getString('hdisplayName')??'');
  print('checking if displayName is actually not null: $theHotelsName');
});
  print('${sPrefs.getString('sharedkey')}');
}

@override
void initState() {
    // TODO: implement initState
    super.initState();
    toReturnHotelName();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       body:Stack(
         children: <Widget>[
Container(
         child: FlutterMap(
           options: MapOptions(
             center:LatLng(widget.latt, widget.lngg),
             maxZoom: 20.0,
             zoom: userZoom,
           ),
           layers: [
             TileLayerOptions(
              urlTemplate: "https://api.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token=$apiToken",
              additionalOptions: {
                "accessToken":"api key goes here",
                "id":"mapbox.streets",                
              },
              //offlineMode: ,
              //cachedTiles: ,
             ),


             MarkerLayerOptions(
               markers: [
                 Marker(
                   width: 50.0,
                   height: 50.0,
                   point: LatLng(widget.latt , widget.lngg),
                   builder: (ctx)=>Container(
                     child: IconButton(
                       icon: Icon(Icons.location_on),
                       color: Colors.blue,
                       onPressed: (){
                         showModalBottomSheet(
                           context: ctx,
                           builder: (ctx){
                             return Container(
                               color: Colors.white70,
                               child:ListView(
                                 children: <Widget>[
                                   SizedBox(
                                     height: 100.0,
                                   ),

                                   ListTile(
                                     title: Text("$theHotelsName",style: TextStyle(color: Colors.green),),
                                     subtitle: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                   widget.navigate == true? IconButton(
                                   icon: Icon(Icons.map,color: Colors.green,size: 50.0,),
                                   onPressed: (){
                                     if(widget.navigate == true){
                                  Navigator.pop(context);
                                  Navigator.of(context)
                                  .push(CupertinoPageRoute(builder: (BuildContext context)
                                  =>MianMapPage(widget.latt,widget.lngg)));
                                     }

                                   },
                                 ):Container()
                                       ],
                                     ),
                                   ),
                                 ],
                               ) ,
                             );
                           }
                         );
                       },
                     ),
                   ),
                 )
               ],
             ),
           ],
         ),
       ),

// Row(
//   mainAxisAlignment: MainAxisAlignment.end,
//   children: <Widget>[
//                   Container(
//                 child:Row(
//                   mainAxisSize: MainAxisSize.min,
//                   // mainAxisAlignment: MainAxisAlignment.end,
//                   // crossAxisAlignment: CrossAxisAlignment.end,
//                   children: <Widget>[
//                       Column(
//                         mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   IconButton(
//                     icon: Icon(Icons.add),
//                     onPressed: (){
//                       setState(() {
//                        userZoom = userZoom + 1.0; 
//                        print("adding ..");
//                       });
//                     },
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.minimize),
//                     onPressed: (){},
//                   ),                  
//                 ],
//               )
//                   ],
//                 ) ,
//                 color: Colors.blueGrey.withOpacity(0.2),
//               )
//   ],
// )

         ],
       ) ,
    );
  }
}











class MianMapPage extends StatefulWidget {
  final double latt,lngg;
  final navigate;

MianMapPage(this.latt,this.lngg,{this.navigate});
  @override
  _MianMapPageState createState() => _MianMapPageState();
}

class _MianMapPageState extends State<MianMapPage> {
String apiToken = "api key goes here";
SharedPreferences sPrefs;
String theHotelsName;



////////////////return hotel name for display ///////////////////////////
toReturnHotelName()async{
sPrefs = await SharedPreferences.getInstance();
theHotelsName = (sPrefs.getString('hdisplayName')??'');
setState(() {
  //getHotel;
  theHotelsName = (sPrefs.getString('hdisplayName')??'');
  print('checking if displayName is actually not null: $theHotelsName');
});
  print('${sPrefs.getString('sharedkey')}');
}

@override
void initState() {
    // TODO: implement initState
    super.initState();
    toReturnHotelName();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back,color: Colors.green,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text(" Locations",style: TextStyle(color: Colors.green),),
        backgroundColor: Colors.white70,
        centerTitle: true,
      ),
       body: Container(
         child: FlutterMap(
           options: MapOptions(
             center:LatLng(widget.latt, widget.lngg),
             maxZoom: 20.0,
             zoom: 15.0,
           ),
           layers: [
             TileLayerOptions(
              urlTemplate: "https://api.mapbox.com/v4/"
              "{id}/{z}/{x}/{y}@2x.png?access_token=$apiToken",
              additionalOptions: {
                "accessToken":"api key goes here",
                "id":"mapbox.streets",                
              },
              //offlineMode: ,
              //cachedTiles: ,
             ),


             MarkerLayerOptions(
               markers: [
                 Marker(
                   width: 80.0,
                   height: 80.0,
                   point: LatLng(widget.latt , widget.lngg ),
                   builder: (ctx)=>Container(
                     child: IconButton(
                       icon: Icon(Icons.location_on),
                       color: Colors.blue,
                       onPressed: (){
                         showModalBottomSheet(
                           context: ctx,
                           builder: (ctx){
                             return Container(
                               color: Colors.white70,
                               child:ListView(
                                 children: <Widget>[
                                   SizedBox(
                                     height: 100.0,
                                   ),

                                   ListTile(
                                     title: Text("$theHotelsName",style: TextStyle(color: Colors.green),),
                                     subtitle: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: <Widget>[
                                   widget.navigate == true? IconButton(
                                   icon: Icon(Icons.map,color: Colors.green,size: 50.0,),
                                   onPressed: (){
                                     if(widget.navigate == true){
                                  Navigator.pop(context);
                                  Navigator.of(context)
                                  .push(CupertinoPageRoute(builder: (BuildContext context)
                                  =>MianMapPage(widget.latt,widget.lngg)));
                                     }

                                   },
                                 ):Container()
                                       ],
                                     ),
                                   ),
                                   //Text("Hotel Name Gose Here"),

                                 ],
                               ),
                             );
                           }
                         );
                       },
                     ),
                   ),
                 )
               ],
             ),
           ],
         ),
       ),
    );
  }
}




// class ShowMyBottomSheet extends StatefulWidget {
//   @override
//   _ShowMyBottomSheetState createState() => _ShowMyBottomSheetState();
// }

// class _ShowMyBottomSheetState extends State<ShowMyBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//     );
//   }
// }