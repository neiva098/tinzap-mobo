import 'package:flutter/material.dart';

class BordedCircleAvatar extends StatelessWidget {
  final image;

  BordedCircleAvatar(this.image);

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
        child: new CircleAvatar(
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.grey,
          backgroundImage: image,
          radius: 140,
        ),
        padding: const EdgeInsets.all(3.0),
        decoration: new BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ));
  }
}
