import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController {
  GoogleMapController controller;

  Map<String, Marker> markers = {};

  void onMapCreated(controller) {
    this.controller = controller;
  }

  moveCamera(lat, lng, zoom) {
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: zoom)));
  }
}
