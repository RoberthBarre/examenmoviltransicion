import 'package:examen_barre_roberth/screens/ListScreen .dart';
import 'package:examen_barre_roberth/backend.dart';
import 'package:flutter/material.dart';

class appBarre extends StatelessWidget {
  const appBarre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Barre Roberth';
    return Scaffold(
      appBar: AppBar(
        title: Text('$name       8º C'),
        centerTitle: true,
      ),
      body: ListScreen(backend: Backend()),
    );
  }
}
