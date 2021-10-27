import 'package:catalogo/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pantallacomida extends StatelessWidget {
  const Pantallacomida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Comida'),
        elevation: 5.0,
        backgroundColor: Color.fromRGBO(241, 98, 188, 1),
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
            TablaComida(
              plato_1: 'Milanesa',
              imagen_1:
                  'https://www.196flavors.com/wp-content/uploads/2018/12/milanesa-7-FP-500x500.jpg',
              parrafo_1:
                  'Medallón de pollo empanizado usualmente acompañado con una ensalada\n Su nacimiento. Cuenta la leyenda que las tropas de Austria, cuando ocuparon el norte de Italia tras la derrota de Napoleón Bonaparte, guardaron una receta: era una costilla a la milanesa con pan rallado.',
              plato_2: 'Churrasco',
              imagen_2:
                  'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2019/01/el-churrasco-que-es.jpg',
              parrafo_2:
                  '6 churrascos\n2 cucharadas de ajo molido (4–6 dientes de ajo)\n2 cucharadas de aceite de oliva\n2 cda. de vinagre blanco o vinagre de vino\n1/4 cucharadita de orégano seco\n1 cda. de pimienta molida\n2 cucharaditas de sal\n1 pimiento verde cortado en tiras\n1–2 cebollas cortadas en rodajas\nEl churrasco es una pieza de carne de ganado vacuno o de pollo sin huesos, cocida a las brasas, a la plancha o directamente sobre el fuego. Suele tener un grosor de dos o tres centímetros.Su origen se ubica entre Chile y Argentina y ya aparece mencionado en documentos del siglo XV como una forma de preparación común en toda la región del Río de la Plata. De allí se extendió a otros países de América Latina, y a España y Portugal.',
              plato_3: 'Pizza',
              imagen_3:
                  'https://www.eluniverso.com/resizer/5N9j1EK0-8MMn30GXOMaL_y6GMI=/809x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/M7ROUAC34ZCI7AU3WN7GF4TAUY.jpg',
              parrafo_3:
                  'Una rieda de masa\n salsa de tomate\n queso de su agrado\n carnes frías es el complemento más común, aunque se puede usar cualquier otro ingrediente\n La pizza moderna se inventó originalmente en Nápoles, Italia, pero la palabra pizza es de origen griego, derivada de la palabra griega pēktos que significa sólido o coagulado. Los antiguos griegos cubrían su pan con aceites, hierbas y queso.',
              plato_4: 'Sushi',
              imagen_4:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/220px-Sushi_platter.jpg',
              parrafo_4:
                  'Arroz para sushi\n1 vaso grande\nAgua, 1 vaso grande \nVinagre de arroz, 75 ml Azúcar, 3 cucharadas \nSal, 1 cucharadita  \nAlga nori deshidratada, 2 láminas\nZanahoria, 1\nPepino, \nAguacate, \nSalmón, 150 g \nWasabi\nSushi es un plato típico de origen japonés basado en arroz aderezado con vinagre de arroz, azúcar y sal y combinado con otros ingredientes como pescados crudos, mariscos,verduras, etc.',
            ),
          ],
        ),
      ),
    );
  }
}
