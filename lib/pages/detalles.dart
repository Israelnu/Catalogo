import 'package:catalogo/utils/botonrestaurante.dart';
import 'package:catalogo/utils/botonvideo.dart';
import 'package:flutter/material.dart';

class DetallesComida extends StatelessWidget {
  const DetallesComida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBarSliver(),
          SliverList(
            delegate: SliverChildListDelegate([
              _TituloYPoster(),
              _Sinopsis(texto: 'algo1'),
              _Sinopsis(texto: 'algo2'),
              _Sinopsis(texto: 'algo3'),
              botonRestaurante(),
              botonVideo()
            ]),
          )
        ],
      ),
    );
  }
}

class _AppBarSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Text(
            'Pollo de miel',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/cargar.gif'),
          image: NetworkImage('https://via.placeholder.com/300x400'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _TituloYPoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/cargar.gif'),
              image: NetworkImage('https://via.placeholder.com/300x400'),
              height: 150,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Instrucciones',
                style: Theme.of(context).textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    size: 15,
                    color: Colors.indigo,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.5',
                    style: Theme.of(context).textTheme.caption,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Sinopsis extends StatelessWidget {
  @override
  final String texto;
  const _Sinopsis({Key? key, required this.texto}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        this.texto,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _botonRestaurante extends StatelessWidget {
  const _botonRestaurante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text('Restaurante'),
        onPressed: () {},
      ),
    );
  }
}
