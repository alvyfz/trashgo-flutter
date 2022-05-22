import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> _markers = {};
  final CameraPosition _initialPosition =
      CameraPosition(target: LatLng(-6.606426, 106.799231), zoom: 20);
  late BitmapDescriptor mapMarker;
  @override
  void initState() {
    super.initState();
    setCustomeMarker();
  }

  void setCustomeMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      'assets/icons8-trash-96.png',
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(-6.6066001, 106.7991911),
          infoWindow: InfoWindow(
              title: "Trash Go", snippet: 'Trash GO Belakang Kesatuan'),
          icon: mapMarker,
        ),
      );
      _markers.add(Marker(
        markerId: MarkerId('id-2'),
        position: LatLng(-6.606948, 106.799191),
        infoWindow:
            InfoWindow(title: "Trash Go", snippet: 'Trash GO Jalan Cincau'),
        icon: mapMarker,
      ));
      _markers.add(Marker(
        markerId: MarkerId('id-3'),
        position: LatLng(-6.606229, 106.799766),
        infoWindow: InfoWindow(title: "Trash Go", snippet: 'Trash GO Gedung 2'),
        icon: mapMarker,
      ));
      _markers.add(Marker(
        markerId: MarkerId('id-4'),
        position: LatLng(-6.606298, 106.798603),
        infoWindow: InfoWindow(title: "Trash Go", snippet: 'Trash GO Pasar'),
        icon: mapMarker,
      ));
      _markers.add(Marker(
        markerId: MarkerId('id-5'),
        position: LatLng(-6.605756, 106.799410),
        infoWindow:
            InfoWindow(title: "Trash Go", snippet: 'Trash GO Pojok Alkautsar'),
        icon: mapMarker,
      ));
      _markers.add(Marker(
        markerId: MarkerId('id-6'),
        position: LatLng(-6.607137, 106.799513),
        infoWindow: InfoWindow(
            title: "Trash Go", snippet: 'Trash GO Mess Basket Kesatuan'),
        icon: mapMarker,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash Map",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        markers: _markers,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _controller.animateCamera(CameraUpdate.zoomOut());
      //   },
      //   child: Icon(Icons.zoom_out_map_outlined),
      // ),
    );
  }
}
