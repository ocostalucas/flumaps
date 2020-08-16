import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../map_controller.dart';

class MapWidget extends StatelessWidget {
  final MapController controller;

  MapWidget(this.controller);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        onMapCreated: controller.onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(-10.277880, -48.333137),
          zoom: 16.0,
        ),
        zoomControlsEnabled: false,
        mapToolbarEnabled: false,
        markers: controller.markers.values.toSet());
  }
}
