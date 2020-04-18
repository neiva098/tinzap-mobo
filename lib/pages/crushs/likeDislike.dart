import 'package:flutter/material.dart';
import '../../services/api.dart';
import './profile.dart';
import './buttons.dart';

class LikeDislike extends StatefulWidget {
  final id;

  LikeDislike(this.id);

  @override
  LikeDislikeState createState() {
    return new LikeDislikeState(id);
  }
}

class LikeDislikeState extends State<LikeDislike> {
  String id;
  dynamic users = [];

  LikeDislikeState(this.id);

  @override
  void initState() {
    super.initState();

    apiGetUsers(id).then((result) {
      if (this.mounted) {
        setState(() {
          users = result;
        });
      }
    });
  }

  void onDislike() async {
    await apiDislike(id, users[0]['_id']);

    setState(() {
      users = users.sublist(1);
    });
  }

  void onLike() async {
    await apiLike(users[0]['_id'], id);

    setState(() {
      users = users.sublist(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return users.length > 0
        ? new Column(
            children: <Widget>[
              new Profile(users[0]),
              new SizedBox(height: 20),
              new ButtonsBox(onLike, onDislike)
            ],
          )
        : SizedBox.shrink();
  }
}
