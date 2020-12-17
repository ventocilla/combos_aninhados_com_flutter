import 'package:flutter/material.dart';

import 'home_page.dart';

/*
combos: ^1.2.0
mobx: ^1.1.1
flutter_mobx: ^1.1.1

dev-depen:
build_runner: ^1.8.1
mobx_codegen: ^1.0.3

ibge cidade api

*/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
