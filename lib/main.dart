import 'package:catalogo/pages/detalles.dart';
import 'package:catalogo/pages/inicio.dart';
import 'package:catalogo/pages/pantalla_cena.dart';
import 'package:catalogo/pages/pantalla_comida.dart';
import 'package:catalogo/pages/pantalla_desayuno.dart';
import 'package:catalogo/pages/pantalla_postre.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'inicio-app',
        routes: {
          'inicio-app': (BuildContext context) => seccionUno(),
          'desayuno': (BuildContext context) => PantallaDesayuno(),
          'comida': (BuildContext context) => Pantallacomida(),
          'cena': (BuildContext context) => PantallaCena(),
          'postre': (BuildContext context) => PantallaPostre(),
          'detalles': (BuildContext context) => DetallesComida(),
        });
  }
}
