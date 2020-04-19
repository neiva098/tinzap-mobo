import 'package:flutter/material.dart';
import './registry.dart';
import './entry.dart';

class LogInScreen extends StatefulWidget {
  @override
  LogInScreenState createState() {
    return new LogInScreenState();
  }
}

class LogInScreenState extends State<LogInScreen> {
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
          Image.asset('assets/icon.png'),
          Container(
              color: Colors.white,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          icon: Icon(Icons.phone),
                          hoverColor: Colors.black,
                          hintText: 'Digite seu número de telefone.',
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EntryScreen()),
                          );
                        },
                        child: Text('Entrar'),
                        color: Colors.red,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)))
                  ]))),
          FlatButton(
            color: Colors.transparent,
            textColor: Colors.red,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistryScreen()),
              );
            },
            child: Text(
              "Não tenho cadatro",
              style: TextStyle(fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
