import 'package:flutter/material.dart';

class Tarjetas extends StatelessWidget {
  const Tarjetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _Tarjeta(
            icon: Icons.food_bank_sharp,
            color: Color(0xff2E305F),
            texto: 'Desayuno',
          ),
          _Tarjeta(
            icon: Icons.food_bank,
            color: Colors.orangeAccent,
            texto: 'Comida',
          ),
        ]),
        TableRow(children: [
          _Tarjeta(
            icon: Icons.food_bank_rounded,
            color: Color.fromRGBO(241, 142, 172, 1),
            texto: 'Cena',
          ),
          _Tarjeta(
            icon: Icons.food_bank_outlined,
            color: Color.fromRGBO(241, 98, 188, 1),
            texto: 'Postre',
          ),
        ])
      ],
    );
  }
}

class _Tarjeta extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String texto;

  const _Tarjeta(
      {Key? key, required this.icon, required this.color, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 35,
            ),
            radius: 35,
          ),
          Text(
            this.texto,
            style: TextStyle(color: this.color, fontSize: 18),
          ),
          TextButton(
            onPressed: () {
              if (texto == 'Desayuno') {
                Navigator.pushNamed(context, 'desayuno');
              }
              if (texto == 'Comida') {
                Navigator.pushNamed(context, 'comida');
              }
              if (texto == 'Cena') {
                Navigator.pushNamed(context, 'cena');
              }
              if (texto == 'Postre') {
                Navigator.pushNamed(context, 'postre');
              }
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
