import 'package:catalogo/widgets/background.dart';
import 'package:catalogo/widgets/slider.dart';
import 'package:flutter/material.dart';

class PantallaPostre extends StatelessWidget {
  const PantallaPostre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Comidas'),
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
              plato_1: 'Tiramisú',
              imagen_1:
                  'https://www.ahumados.shop/wp-content/uploads/2021/06/1625019006_1371597326801.jpeg',
              parrafo_1:
                  '5 yemas de huevo\n1/2 tazas de azúcar glass, para las yemas\n2 cucharadas de vino, dulce\n5 claras de huevo\n1 pizca de sal\n1 paquete de soleta\n1 taza de café espresso, frío\n2 cucharadas de vino, dulce\n1/2 tazas de cocoa, para decorar\nEl tiramisú es sin ninguna duda el postre más emblemático de Italia. Su origen se lo disputan dos regiones: Véneto y la Toscana. Por una parte, se dice que nació en la ciudad de Siena en el siglo XVII, como dulce favorito de los cortesanos.',
              plato_2: 'Crema catalana',
              imagen_2:
                  'https://gastronomiaycia.republica.com/wp-content/photos/crema_catalana.jpg',
              parrafo_2:
                  '2 1/3 tazas de crema para batir\n1/3 tazas de crema half & half\n1/2 cucharadas de esencia de vainilla\n8 huevos\n1/2 tazas de azúcar\nEste postre es además uno de los más antiguos de Europa. Las primeras elaboraciones aparecen en los recetarios medievales de Cataluña. Lo tradicional es presentarla en un recipiente de barro.',
              plato_3: 'Apfelstrudel',
              imagen_3:
                  'https://www.curiouscuisiniere.com/wp-content/uploads/2018/09/German-Apfelstrudel-Apple-Strudel-7157-1.3.jpg',
              parrafo_3:
                  '500 gramos de pasta philo\n150 gramos de mantequilla, derretida\n5 manzanas, reineta\n100 gramos de azúcar morena\n50 gramos de pasita\n10 gramos de canela\n50 gramos de almendra, fileteada\nal gusto de azúcar glass\nal gusto de canela en polvo\n200 gramos de helado de vainilla\nal gusto de menta\nEl Apfelstrudel o strudel de manzana es un postre típico tradicional de la cocina austriaca y del sur de Alemania, cuyos orígenes podrían remontarse a antiguas recetas de las cocinas bizantina, armenia o turca.',
              plato_4: 'Brownie',
              imagen_4:
                  'https://sugargeekshow.com/wp-content/uploads/2019/10/fudgy_brownie_recipe_featured-500x375.jpg',
              parrafo_4:
                  '200 g. de mantequilla\n180 g. de chocolate negro 70% mínimo\n2 huevos L\n225 g de azúcar normal o glas\n30 g. cacao en polvo sin azúcar \nesencia de vainilla\n120 g de harina de trigo\nu origen nos lleva a 1897, cuando un cocinero estadounidense se olvidó de echarle levadura a un bollo de chocolate que estaba preparando. El resultado ya lo conocemos: un bizcocho compacto con nueces de intenso sabor a chocolate.',
            ),
          ],
        ),
      ),
    );
  }
}
