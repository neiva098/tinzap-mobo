import 'package:flutter/material.dart';
import '../../services/api.dart';
import '../utils/avatarBorded.dart';

class ItsMatchScreen extends StatefulWidget {
  final id;
  ItsMatchScreen(this.id);
  @override
  ItsMatchScreenState createState() {
    return new ItsMatchScreenState(id);
  }
}

class ItsMatchScreenState extends State<ItsMatchScreen> {
  dynamic matchDev = false;

  ItsMatchScreenState(String id) {
    this.matchDev = matchDev;

    apiGetSocket(id).on('match', (dev) {
      setState(() {
        matchDev = dev;
      });
    });
  }

  onExit() {
    setState(() {
      matchDev = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (matchDev != false) {
      return new Container(
          decoration: BoxDecoration(
            color: Colors.red[200],
          ),
          child: new Column(
            children: [
              Image.asset(
                'assets/itsamatch.png',
                height: 150,
              ),
              BordedCircleAvatar(matchDev['avatar']),
              SizedBox(height: 30),
              Text(
                matchDev['name'],
                style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20),
              FlatButton(
                color: Colors.transparent,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    matchDev = false;
                  });
                },
                child: Text(
                  "Sair",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ));
    } else {
      return SizedBox.shrink();
    }
  }
}
