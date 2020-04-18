import 'package:flutter/material.dart';

class BordedCircleAvatar extends StatelessWidget {
  final image;

  BordedCircleAvatar(this.image);

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new CircleAvatar(
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.grey,
          backgroundImage: new NetworkImage(image),
          radius: 140,
        ),
        padding: const EdgeInsets.all(4.0),
        decoration: new BoxDecoration(
          color: Colors.yellow[200],
          shape: BoxShape.circle,
        ));
  }
}
