import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qwido/domain.dart';

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
        title: new Text(
          'Oeuvres à proximité',
          style: Theme.of(context).textTheme.display1,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Center(
                child: GoogleMap(
                  options: GoogleMapOptions(
                    cameraPosition: CameraPosition(
                      bearing: 0.0,
                      target: LatLng(48.427782, -71.062819),
                      tilt: 30.0,
                      zoom: 13.5,
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
    MapMarkerRepository mapMarkerRepository = MapMarkerRepository();

    for (Map<String, dynamic> mapMarker in mapMarkerRepository.storage) {
      controller.addMarker(MarkerOptions(
        infoWindowText: InfoWindowText(mapMarker['name'], mapMarker['artist']),
        position: LatLng(mapMarker['lat'], mapMarker['long']),
        icon: BitmapDescriptor.fromAsset('lib/assets/pin-small.png'),
      ));
    }
  }
}
