import 'package:combos/combos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCombo(
                child: Text('Selecione um Estado'),
                getList: () => [], onItemTapped: (value) {  }, itemBuilder: (BuildContext context, ComboParameters parameters, item) {  },),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListCombo(
                child: Text('Selecione uma Cidade'),
                getList: () => [], onItemTapped: (value) {  }, itemBuilder: (BuildContext context, ComboParameters parameters, item) {  },),
            ),
          ],
        ),
      ),
    );
  }
}
