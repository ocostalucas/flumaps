// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapStore on _MapStoreBase, Store {
  final _$controllerAtom = Atom(name: '_MapStoreBase.controller');

  @override
  GoogleMapController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(GoogleMapController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  final _$_MapStoreBaseActionController =
      ActionController(name: '_MapStoreBase');

  @override
  dynamic onMapCreated(GoogleMapController value) {
    final _$actionInfo = _$_MapStoreBaseActionController.startAction(
        name: '_MapStoreBase.onMapCreated');
    try {
      return super.onMapCreated(value);
    } finally {
      _$_MapStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controller: ${controller}
    ''';
  }
}
