import 'package:flutter/material.dart';
import 'package:flutter_maps/app/screens/map/components/map_widget.dart';
import 'package:flutter_maps/app/screens/map/components/search_widget.dart';
import 'map_controller.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MapWidget(_mapController),
          SearchWidget(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _mapController.moveCamera(-10.277880, -48.333137, 16.0);
                  });
                },
                child: const Icon(Icons.my_location),
              ),
            ),
          )
        ],
      ),
    );
  }
}
