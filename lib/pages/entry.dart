import 'package:flutter/material.dart';
import './home.dart';

class EntryScreen extends StatefulWidget {
  @override
  EntryScreenState createState() {
    return new EntryScreenState();
  }
}

class EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('TinZap'),
        elevation: 0.7,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(height: 250),
                    Text(
                      'Foi enviado em seu número um código de acesso, confirme este código no campo abaixo:',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          icon: Icon(Icons.message),
                          hoverColor: Colors.black,
                          hintText: 'Digite aqui o código',
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TinzapHome()),
                                (Route<dynamic> route) => false
                          );
                        },
                        child: Text('Confirmar'),
                        color: Colors.red,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)))
                  ]))),
        ],
      ),
    );
  }
}
