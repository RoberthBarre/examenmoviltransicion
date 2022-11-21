import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:examen_barre_roberth/backend.dart';
import 'package:examen_barre_roberth/widgets/EquipoWidget.dart';

class ListScreen extends StatelessWidget {
  final Backend _backend;

  const ListScreen({Key? key, required Backend backend})
      : _backend = backend,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: ListView(
        children: _backend
            .getEquipos()
            .map((equipo) => EquipoWidget(equipo: equipo))
            .toList(),
      ),
    );
  }
}
