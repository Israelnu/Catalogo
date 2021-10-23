import 'package:flutter/material.dart';

class PeliculasSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            child: Text(
              'Mejores comidas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
            //padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _MoviePoster();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _MoviePoster();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _MoviePoster();
              },
            ),
          )
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 50,
        color: Colors.amber,
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
                  image: NetworkImage('https://via.placeholder.com/300x400'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 0.5,
            ),
            Text(
              'Shang-shi y la leyenda de los diez anillos',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
