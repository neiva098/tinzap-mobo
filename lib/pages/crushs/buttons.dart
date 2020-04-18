import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class ButtonsBox extends StatelessWidget {
  final likeHandler;
  final dislikeHandler;

  ButtonsBox(this.likeHandler, this.dislikeHandler);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: TouchableOpacity(
            child: Image.asset(
              'assets/like.png',
            ),
            onTap: likeHandler,
          ),
        ),
        SizedBox(width: 50),
        Container(
          child: TouchableOpacity(
            child: Image.asset(
              'assets/dislike.png',
            ),
            onTap: dislikeHandler,
          ),
        ),
      ],
    );
  }
}
