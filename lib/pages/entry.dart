import 'package:flutter/material.dart';
import './my_profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                      'Enviamos um código de verificação para você',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
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
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setString('id', '123');

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()),
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
