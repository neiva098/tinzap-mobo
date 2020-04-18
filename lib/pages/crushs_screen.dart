import 'package:tinzap/pages/crushs/likeDislike.dart';
import 'package:flutter/material.dart';
import './crushs/itsmatch.dart';

class CrushsScreen extends StatelessWidget {
  final id;

  CrushsScreen(this.id);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        LikeDislike(id),
        ItsMatchScreen(id),
      ]
    );
  } 
}
