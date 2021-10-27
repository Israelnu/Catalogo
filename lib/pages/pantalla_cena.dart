import 'package:catalogo/widgets/slider.dart';
import 'package:flutter/material.dart';

class PantallaCena extends StatelessWidget {
  const PantallaCena({Key? key}) : super(key: key);

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
              plato_1: 'Enchiladas',
              imagen_1: 'https://i.blogs.es/efb378/1366_2000-1/450_1000.jpg',
              parrafo_1:
                  'tortilla de maiz\n salsa (regularmente roja o verde)\n pollo (tinga de pollo)\n queso\n crema\nSe derivan de la tortilla, cuyo origen se remonta a las civilizaciones precolombinas de Mesoamérica. Para algunos historiadores, las enchiladas fueron conocidas en el México Independiente cuando Miguel Hidalgo, Vicente Guerrero y José María Morelos viajaban por el territorio mexicano.\n ',
              plato_2: 'Tacos',
              imagen_2:
                  'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/04/Carne-Asada-Tacos-main-3-500x375.jpg',
              parrafo_2:
                  'Tortilla\n carne\n cebolla\n cilantro\n salsa de su agrado\n La palabra taco proviene de la palabra náhuatl tlahco que significa “mitad o en el medio”, refiriéndose a la forma en que está conformado. El verdadero origen del taco no se conoce pero se cree que fue creado en el México prehispánico.',
              plato_3: 'Hamburguesa',
              imagen_3:
                  'https://gourmetdemexico.com.mx/wp-content/uploads/2021/05/dia-de-la-hamburguesa.jpg',
              parrafo_3:
                  'Bollos de hamburguesa\n medallón de carne\n jitomate\n cebolla\n lechuga\n pepinillos\n aderezo\n Una hamburguesa es un sándwich hecho a base de carne molida o de origen vegetal, aglutinada en forma de filete cocinado a la parrilla o a la plancha, aunque también puede freírse u hornearse. Fuera del ámbito de habla hispana, es más común encontrar la denominación estadounidense burger, acortamiento de hamburger.',
              plato_4: 'Tortas',
              imagen_4:
                  'https://www.goya.com/media/4425/pork-poblano-and-roasted-pineapple-tortas.jpg',
              parrafo_4:
                  'pan tipo birote o bolillo\n el relleno puede ser a elección personal\n el origen de la torta se remonta al periodo porfirista, cuando a un vendedor de tacos se le ocurrió utilizar un pan de trigo para dar forma a una torta, que considera una mezcla de las cocinas nativa y europea, y sustitutiva de la tortilla en la comida callejera de la Ciudad de México.',
            ),
          ],
        ),
      ),
    );
  }
}
