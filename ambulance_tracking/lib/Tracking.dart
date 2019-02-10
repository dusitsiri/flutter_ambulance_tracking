import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';

class TrackingPage extends StatelessWidget {
  @override
  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // _buildButtonColumn(Color(0xff6200ee), FontAwesomeIcons.phone, 'CALL'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft), onPressed: () {

          },
        ),
        title: Text("Station"),
        actions: <Widget>[
          IconButton(icon: Icon(
            FontAwesomeIcons.search), onPressed: () {

            },
          ),
        ],
      ),
      body: new FlutterMap(
        options: new MapOptions(
          center: new LatLng( 13.8458, 100.5707),
          zoom: 13.0,
        ),
        layers: [
          new TileLayerOptions(
            // urlTemplate: 
          )
        ],
      ),
    );
  }
}
