import 'package:catalogo/widgets/slider.dart';
import 'package:flutter/material.dart';

class PantallaPostre extends StatelessWidget {
  const PantallaPostre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Comida'),
        elevation: 5.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PeliculasSlider(),
          ],
        ),
      ),
    );
  }
}
