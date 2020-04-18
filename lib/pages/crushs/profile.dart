import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final user;
  Profile(this.user);

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 530,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Colors.red[50],
        ),
        child:
            new Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(user['avatar'], height: 360, width: 900),
          SizedBox(height: 10),
          new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              new Text('${user['name']}, 25',
                  style: new TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  )),
              SizedBox(height: 5),
              new Text('Online às, 20:45',
                  style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              SizedBox(height: 5),
              new Text('Raio: 25km',
                  style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0)),
              SizedBox(height: 5),
              new Text(user['bio'] != null ? user['bio'] : '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                  style: new TextStyle(color: Colors.grey, fontSize: 16.0)),
            ]),
          )
        ]));
  }
}
