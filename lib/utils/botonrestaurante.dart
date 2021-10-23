import 'package:flutter/material.dart';

class botonRestaurante extends StatelessWidget {
  const botonRestaurante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: IconButton(
        icon: Icon(Icons.restaurant),
        onPressed: () {},
      ),
    );
  }
}
