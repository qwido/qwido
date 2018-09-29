import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  MapPageState createState() {
    return new MapPageState();
  }
}

class MapPageState extends State<MapPage> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Center(
                child: GoogleMap(
                  options: GoogleMapOptions(
                    cameraPosition: CameraPosition(
                      bearing: 0.0,
                      target: LatLng(48.4268804, -71.0726884),
                      tilt: 30.0,
                      zoom: 14.0,
                    ),
                  ),
                  onMapCreated: _onMapCreated,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.addMarker(MarkerOptions(
        infoWindowText: InfoWindowText('bobby', 'Description'),
        position: LatLng(48.427782, -71.062819)));
  }
}
