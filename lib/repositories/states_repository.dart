import 'package:combos_aninhados_com_flutter/models/states_model.dart';

class StateRepository {
  List<StateModel> findAllStates() {
    return [
      StateModel(id: 'SP', name: 'São Paulo'),
      StateModel(id: 'MG', name: 'Minas Gerais'),
      StateModel(id: 'RJ', name: 'Rio de Janeiro'),
    ];
  }
}
