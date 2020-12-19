import 'package:combos_aninhados_com_flutter/models/city_model.dart';
import 'package:combos_aninhados_com_flutter/models/states_model.dart';
import 'package:combos_aninhados_com_flutter/repositories/cities_repository.dart';
import 'package:combos_aninhados_com_flutter/repositories/states_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  var citiesRepository = CitiesRepository();
  
  @observable
  List<StateModel> states;

  @observable
  StateModel stateSelected;

  @action
  void selectState(StateModel stateSelected) {
    this.stateSelected = stateSelected;
  }

  @action
  void findStates() {
    this.states = StateRepository().findAllStates();
  }

  @observable
  List<CityModel> cities;

  @observable
  CityModel citySeleceted;

  @action
  void selectCity(CityModel city) {
    this.citySeleceted = city;
  }

  @action
  Future<void> findCities() async {
    this.cities = await citiesRepository.getCitiesByState(stateSelected.id);
  }
}
