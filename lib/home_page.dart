import 'package:combos/combos.dart';
import 'package:combos_aninhados_com_flutter/models/states_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import './home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.findStates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListCombo<StateModel>(
                    child: Text(controller.stateSelected?.id ?? 'Selecione um Estado'),
                    getList: () => controller.states,
                    onItemTapped: (StateModel value) {
                      controller.selectState(value);
                    },
                    itemBuilder: (_, parameters, item) {
                      return ListTile(title: Text(item.id));
                    },
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListCombo(
                    child: Text('Selecione uma Cidade'),
                    getList: () => [],
                    onItemTapped: (value) {},
                    itemBuilder: (BuildContext context, ComboParameters parameters, item) {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
