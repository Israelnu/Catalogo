import 'package:catalogo/widgets/slider.dart';
import 'package:flutter/material.dart';

class PantallaDesayuno extends StatelessWidget {
  const PantallaDesayuno({Key? key}) : super(key: key);

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
              plato_1: 'Revuelto de Huevo',
              imagen_1:
                  'https://unareceta.com/wp-content/uploads/2017/03/huevos-revueltos-americanos.jpg',
              parrafo_1:
                  '5 huevos (separar la clara de la yema en 2 tazones)\n 1 cucharada de mantequilla o margarina, dividida en dos partes\n Sal y pimienta molida\n Cebollino finamente cortado, al gusto (esto es opcional)\n Hay varias versiones, pero la más documentada dice que los inventó involuntariamente Francisco Lorín Colorado, un cocinero que estaba haciendo huevos fritos',
              plato_2: 'Birria',
              imagen_2:
                  'https://www.comedera.com/wp-content/uploads/2019/01/receta-de-birria.jpg',
              parrafo_2:
                  '6 chiles anchos, desvenados, limpios y remojados, para la marinada\n 5 dientes de ajo, cortado en trozos para la marinada\n 2 clavos de olor, asado\n 2 kilos de carne de res, con hueso y grasita cortados en trozos\n La birria es, en la gastronomía mexicana, un plato a base de carne de carnero estrictamente (aunque en algunas regiones se prepara con carne de chivo y en algunas partes del norte, con carne de res), adobado con una preparación a base de algunos tipos de chiles, condimentos y sal. Con el jugo que resulta de su cocimiento se prepara una salsa o consomé a base de tomate.',
              plato_3: 'Cóctel de frutas',
              imagen_3:
                  'https://img-global.cpcdn.com/recipes/recipes_4754_v1393346251_receta_foto_00004754/400x400cq70/photo.jpg',
              parrafo_3:
                  'Ingredientes para macedonia cubana\n 1 piña\n2 mangos\n3 guayabas\n1/2 melón\n4plátanos\n1/2 fruta bomba\n20 naranjas\n1 guanábana\nCoctel de frutas. Mezcla de variadas frutas rebanadas en pequeños trozos, aderezada con azúcar, licor o zumo de frutas; se toma como postre en muchos países. Además es llamada como: ensalada de frutas, ensalada o coctel de frutas en México o tutti frutti en Chile,',
              plato_4: 'Entomatadas',
              imagen_4:
                  'https://t1.rg.ltmcdn.com/es/images/3/8/9/img_entomatadas_con_queso_33983_600.jpg',
              parrafo_4:
                  '5 jitomates\n1 taza de caldo de pollo\n3 dientes de ajo\n1 pechuga de pollo, cocida y deshebrada\n1 taza de aceite, para freír\n12 tortillas de maíz\nLas entomatadas son un plato típico de México, Oaxaca. Consisten en una tortilla bañada en salsa de tomate, preparada con sal, ajo, cebolla, orégano y chile, aunque las proporciones de estos ingredientes varían enormemente dependiendo del plato del chef. Las tortillas van dobladas en dos, como si fueran un taco, pueden ser sin relleno o bien, rellenas de pollo, res, queso, o frijoles.',
            ),
          ],
        ),
      ),
    );
  }
}
