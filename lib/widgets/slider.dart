import 'package:flutter/material.dart';

class PeliculasSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: double.infinity,
        child: Table(
          children: [
            TableRow(children: [
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
            ]),
            TableRow(children: [
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
              _platillos(
                  plato: 'agua',
                  imagen:
                      'https://www.centrojuliafarre.es/wp-content/uploads/2018/07/fingers-calabacin.jpg'),
            ])
          ],
        ));
  }
}

class _platillos extends StatelessWidget {
  @override
  final String plato;
  final String imagen;
  const _platillos({Key? key, required this.plato, required this.imagen})
      : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 130,
        color: Color.fromRGBO(62, 66, 107, 0.7),
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'detalles',
                  arguments: 'movie-instance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/isabelle.jpg'),
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
            )
          ],
        ));
  }
}
