//import 'package:examen_barre_roberth/equipo.dart',
import 'equipo.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  var equipos;

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of equipos. Hardcoded here for testing purposes.
  final _equipos = [
    Equipo(
      id: 1,
      nombre: 'Brasil',
      participaciones: '22 (primera vez en 1930)',
      descripcion:
          'La selección de fútbol de Brasil (Seleção Brasileira de Futebol en portugués) es el equipo que representa a dicho país en las competiciones oficiales de fútbol masculino.',
      imagen:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/1024px-Flag_of_Brazil.svg.png',
      mundiales: '5 (2002, 1994, 1970, 1962, 1958)',
    ),
    Equipo(
      id: 2,
      nombre: 'Argentina',
      participaciones: '18 (primera vez en 1930)',
      descripcion:
          'Argentina, oficialmente República Argentina, es un país soberano de América del Sur, ubicado en el extremo sur y sudeste de dicho subcontinente. Adopta la forma de gobierno republicana, democrática, representativa y federal.',
      imagen:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/1024px-Flag_of_Argentina.svg.png',
      mundiales: '2,(1986, 1978)',
    ),
    Equipo(
      id: 3,
      nombre: 'Uruguay',
      participaciones: '12 (primera vez en 1930)',
      descripcion:
          'Uruguay, oficialmente República Oriental del Uruguay, es un país soberano de América del Sur, situado en la parte oriental del Cono Sur.',
      imagen:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Uruguay.svg/1024px-Flag_of_Uruguay.svg.png',
      mundiales: '2,(1930, 1950)',
    ),
    Equipo(
      id: 4,
      nombre: 'Ecuador',
      participaciones: '4 (primera vez en 2002)',
      descripcion:
          'Ecuador (en kichwa, Ecuadorpi), cuyo nombre oficial es República del Ecuador (en kichwa, Ecuadorpi Ripuwlika), es un país soberano y plurinacional, ubicado en la región noroccidental de América del Sur.',
      imagen:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Flag_of_Ecuador.svg/1024px-Flag_of_Ecuador.svg.png',
      mundiales: '1, (2022)',
    ),
    Equipo(
      id: 5,
      nombre: 'Colombia',
      participaciones: '6 (primera vez en 1962)',
      descripcion:
          'Colombia, oficialmente República de Colombia, es un país soberano situado en la región noroccidental de América del Sur. Se constituye en un Estado unitario, social y democrático de derecho cuya forma de gobierno es presidencialista.',
      imagen:
          'https://s2.static.brasilescola.uol.com.br/be/2022/09/bandeira-colombia.jpg',
      mundiales: 'Ninguno',
    )
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all equipos.
  List<Equipo> getEquipos() {
    return _equipos;
  }

  /// Marks equipos identified by its id as read.
  void markProductsRead(int id) {
    final index = _equipos.indexWhere((equipo) => equipo.id == id);

    equipoWidget(equipo) {}
  }
}
