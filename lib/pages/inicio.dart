import 'package:catalogo/utils/tarjetas.dart';
import 'package:catalogo/widgets/background.dart';
import 'package:flutter/material.dart';

class seccionUno extends StatelessWidget {
  const seccionUno({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Back(),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Tarjetas(),
        ],
      ),
    );
  }
}
