import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamilfarmers_ios/cart/cartappbar.dart';

class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();

}

class _contactusState extends State<contactus> {
  GoogleMapController mapController;
  static final LatLng _center = const LatLng(13.0279, 80.2605);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_currentMapPosition.toString()),

        position: _currentMapPosition,
        infoWindow: InfoWindow(
            title: 'Tamil Farmers',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _currentMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: cartappbar("Contact us"),
        body:
              Stack(
                children: <Widget>[
                  GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _center,
                        zoom: 10.0,
                      ),
                      markers: _markers,
                      onCameraMove: _onCameraMove
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: FloatingActionButton(
                        onPressed: _onAddMarkerButtonPressed,
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.location_pin, size: 30.0),
                      ),
                    ),
                  ),
                ],
              ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              //     child: Image.asset('assets/image/contactus.jpg'),
              //   ),
              // ),


      ),
    );
  }
}