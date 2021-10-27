import 'package:catalogo/pages/detalles.dart';
import 'package:flutter/material.dart';

class TablaComida extends StatelessWidget {
  final String plato_1;
  final String plato_2;
  final String plato_3;
  final String plato_4;
  final String imagen_1;
  final String imagen_2;
  final String imagen_3;
  final String imagen_4;
  final String parrafo_1;
  final String parrafo_2;
  final String parrafo_3;
  final String parrafo_4;
  const TablaComida({
    Key? key,
    required this.plato_1,
    required this.plato_2,
    required this.plato_3,
    required this.plato_4,
    required this.imagen_1,
    required this.imagen_2,
    required this.imagen_3,
    required this.imagen_4,
    required this.parrafo_1,
    required this.parrafo_2,
    required this.parrafo_3,
    required this.parrafo_4,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: double.infinity,
        child: Table(
          children: [
            TableRow(children: [
              _platillos(
                plato: this.plato_1,
                imagen: this.imagen_1,
                parrafo: this.parrafo_1,
              ),
              _platillos(
                plato: this.plato_2,
                imagen: this.imagen_2,
                parrafo: this.parrafo_2,
              ),
            ]),
            TableRow(children: [
              _platillos(
                plato: this.plato_3,
                imagen: this.imagen_3,
                parrafo: this.parrafo_3,
              ),
              _platillos(
                plato: this.plato_4,
                imagen: this.imagen_4,
                parrafo: this.parrafo_4,
              ),
            ]),
          ],
        ));
  }
}

class _platillos extends StatelessWidget {
  @override
  final String plato;
  final String imagen;
  final String parrafo;
  const _platillos({
    Key? key,
    required this.plato,
    required this.imagen,
    required this.parrafo,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 250,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetallesComida(
                            texto: this.plato,
                            imagen: this.imagen,
                            parrafo: this.parrafo,
                          ))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/cargar.gif'),
                  image: NetworkImage(this.imagen),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 0.5,
            ),
            Text(
              this.plato,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2E305F)),
            )
          ],
        ));
  }
}
