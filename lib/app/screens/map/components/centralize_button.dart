import 'package:flutter/material.dart';
import 'package:flutter_maps/app/screens/map/map_controller.dart';

class CentralizeButton extends StatefulWidget {
  final MapController controller;

  CentralizeButton(this.controller);

  @override
  _CentralizeButtonState createState() => _CentralizeButtonState();
}

class _CentralizeButtonState extends State<CentralizeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              widget.controller.moveCamera(-10.277880, -48.333137, 16.0);
            });
          },
          child: const Icon(Icons.my_location),
        ),
      ),
    );
  }
}
