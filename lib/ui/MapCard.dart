import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trashgo/pages/MapPage.dart';

class MapCard extends StatelessWidget {
  const MapCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => MapPage()));
      },
      child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          height: 250,
          width: double.maxFinite,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(-6.606426, 106.799231), zoom: 17),
                mapType: MapType.normal,
              ))),
    );
  }
}
