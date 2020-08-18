import 'package:flutter/material.dart';
import 'package:flutter_maps/app/screens/map/components/map_widget.dart';
import 'components/centralize_button.dart';
import 'map_controller.dart';

class MapScreen extends StatelessWidget {
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MapWidget(_mapController),
          CentralizeButton(_mapController)
        ],
      ),
    );
  }
}
