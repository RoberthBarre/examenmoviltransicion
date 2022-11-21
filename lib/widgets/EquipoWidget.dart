// ignore: file_names
import 'package:examen_barre_roberth/screens/DetailScreen .dart';
import 'package:flutter/material.dart';
import 'package:examen_barre_roberth/equipo.dart';

class EquipoWidget extends StatelessWidget {
  final Equipo equipo;
  const EquipoWidget({Key? key, required this.equipo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Expanded(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(equipo: equipo, context: context),
                      ),
                    );
                  },
                  onLongPress: () {
                    print('Long Press');
                  },
                  child: Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      print('Dismissed');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(equipo.id.toString()),
                          Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(31, 243, 5, 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  equipo.nombre,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(children: [
                            Text(
                              equipo.participaciones,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                          ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ))));
  }
}
