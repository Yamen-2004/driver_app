import 'package:driver_application/shortCiut/buttom.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:latlong2/latlong.dart' as latlong;
import 'package:geolocator/geolocator.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => _MapSample();
}

class _MapSample extends State<MapSample> {
  late BitmapDescriptor Myicon;
  List<Marker> allMarkers = [Marker(markerId: MarkerId('marker1'))];

  @override
  void initState() {
    super.initState();
  }

  bool value = false;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            alignment: Alignment.centerRight,
            icon: const Icon(
              Icons.person,
              color: Colors.black,
              size: 50,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
          title: const Text("الخريطة", style: TextStyle(color: Colors.black)),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              alignment: Alignment.centerLeft,
              icon: const Icon(Icons.notifications,
                  color: Colors.black, size: 40),
              onPressed: () {
                Navigator.pushNamed(context, "/notifications");
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Opacity(
              opacity: value ? 1 : 0.3,
              child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(31.9454, 35.9284),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: {allMarkers[0]}),
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: button(
                    text: value ? "تعطيل الموقع" : "تفعيل الموقع",
                    onPressed: () {
                      if (value == false) {
                        setState(() {
                          allMarkers[0] = (Marker(
                              markerId: MarkerId('marker1'),
                              position: LatLng(31.9454, 35.9284),
                              icon: BitmapDescriptor.defaultMarker,
                              infoWindow: InfoWindow(title: "موقعك الحالي")           ));
                          value = !value;
                        });
                      } else {
                        setState(() {
                          allMarkers[0] = (Marker(
                            markerId: MarkerId('marker1'),
                          ));
                          value = !value;
                        });
                      }
                    },
                    color: Colors.black,
                    colortxt: Colors.white))
          ],
        ));
  }
}
