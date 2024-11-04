import 'package:driver_application/shortCiut/buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => _MapSample();
}

class _MapSample extends State<MapSample> {
  bool value = false;
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
              opacity: value ? 1 : 0.2,
              child: FlutterMap(
                mapController: MapController(),
                options: MapOptions(
                  center: LatLng(31.9454, 35.9284),
                  zoom: 13.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: button(
                    text: value ? "تعطيل الحافلة" : "تفعيل الحافلة",
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                    },
                    color: Colors.black,
                    colortxt: Colors.white))
          ],
        ));
  }
}
