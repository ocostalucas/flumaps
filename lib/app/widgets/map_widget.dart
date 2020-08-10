import 'package:flutter/material.dart';
import 'package:flutter_maps/app/stores/map_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final map = MapStore();

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => GoogleMap(
              onMapCreated: map.onMapCreated,
              initialCameraPosition: CameraPosition(
                target: const LatLng(-10.277880, -48.333137),
                zoom: 16.0,
              ),
              zoomControlsEnabled: false,
              mapToolbarEnabled: false,
              markers: map.markers,
            ));
  }
}
