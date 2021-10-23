import 'package:flutter/material.dart';

class botonVideo extends StatelessWidget {
  const botonVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: IconButton(
        icon: Icon(Icons.videocam),
        onPressed: () {},
      ),
    );
  }
}
