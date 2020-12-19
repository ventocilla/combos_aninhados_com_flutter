// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$statesAtom = Atom(name: '_HomeControllerBase.states');

  @override
  List<StateModel> get states {
    _$statesAtom.reportRead();
    return super.states;
  }

  @override
  set states(List<StateModel> value) {
    _$statesAtom.reportWrite(value, super.states, () {
      super.states = value;
    });
  }

  final _$stateSelectedAtom = Atom(name: '_HomeControllerBase.stateSelected');

  @override
  StateModel get stateSelected {
    _$stateSelectedAtom.reportRead();
    return super.stateSelected;
  }

  @override
  set stateSelected(StateModel value) {
    _$stateSelectedAtom.reportWrite(value, super.stateSelected, () {
      super.stateSelected = value;
    });
  }

  final _$citiesAtom = Atom(name: '_HomeControllerBase.cities');

  @override
  List<CityModel> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(List<CityModel> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  final _$citySelecetedAtom = Atom(name: '_HomeControllerBase.citySeleceted');

  @override
  CityModel get citySeleceted {
    _$citySelecetedAtom.reportRead();
    return super.citySeleceted;
  }

  @override
  set citySeleceted(CityModel value) {
    _$citySelecetedAtom.reportWrite(value, super.citySeleceted, () {
      super.citySeleceted = value;
    });
  }

  final _$findCitiesAsyncAction = AsyncAction('_HomeControllerBase.findCities');

  @override
  Future<void> findCities() {
    return _$findCitiesAsyncAction.run(() => super.findCities());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void selectState(StateModel stateSelected) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.selectState');
    try {
      return super.selectState(stateSelected);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void findStates() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.findStates');
    try {
      return super.findStates();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCity(CityModel city) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.selectCity');
    try {
      return super.selectCity(city);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
states: ${states},
stateSelected: ${stateSelected},
cities: ${cities},
citySeleceted: ${citySeleceted}
    ''';
  }
}
