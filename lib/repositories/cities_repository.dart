import 'dart:convert';

import 'package:combos_aninhados_com_flutter/models/city_model.dart';
import 'package:flutter/services.dart';

class CitiesRepository {
  Future<List<CityModel>> getCitiesByState(String state) async {
    var jsonFile = await rootBundle.loadString('assets/cidades.json');
    List<dynamic> cities = json.decode(jsonFile) as List;
    return cities.map((c) => CityModel.fromJson(c)).where((c) => c.state == state).toList();
  }
}
