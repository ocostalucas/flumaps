import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
part 'map_store.g.dart';

class MapStore = _MapStoreBase with _$MapStore;

abstract class _MapStoreBase with Store {
  @observable
  GoogleMapController controller;

  @observable
  final markers = ObservableSet<Marker>.of([
    Marker(
        markerId: MarkerId("0"),
        position: LatLng(-10.277880, -48.333137),
        infoWindow: InfoWindow(title: "Ulbra", snippet: "Universidade"))
  ]).asObservable();

  @action
  void onMapCreated(GoogleMapController value) => controller = value;

  @action
  void addMarker(Marker value) => markers.add(value);

  @action
  void removeMarker(Marker marker) =>
      markers.removeWhere((item) => item.markerId == marker.markerId);
}
