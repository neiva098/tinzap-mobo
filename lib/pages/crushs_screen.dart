import 'package:flutter/material.dart';

class CrushScreen extends StatefulWidget {
  @override
  CrushScreenState createState() {
    return new CrushScreenState();
  }
}

class CrushScreenState extends State<CrushScreen> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Container(
                height: 530,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.red[50],
                ),
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/iam.png', height: 360, width: 900),
                      SizedBox(height: 10),
                      new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text('Cristiano Neiva, 25',
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
                      new Text(
                          'Aluno do CEFET-MG, mlk top dms, chama no zap ddddddddddddddddddddai bbffffffaaaaaa aaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaafffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff...',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          textAlign: TextAlign.justify,
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 16.0)),
                          ]
                        ),
                      )
                    ]))
          ],
        ),
        SizedBox(height: 20),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/like.png',
            ),
            SizedBox(width: 50),
            Image.asset('assets/dislike.png'),
          ],
        )
      ],
    );
  }
}
