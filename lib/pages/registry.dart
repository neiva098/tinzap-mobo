import 'package:flutter/material.dart';


class RegistryScreen extends StatefulWidget {
  @override
  RegistryScreenState createState() {
    return new RegistryScreenState();
  }
}

class RegistryScreenState extends State<RegistryScreen> {
  String genre;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('TinZap'),
        elevation: 0.7,
      ),

      body: Container(
          color: Colors.white,
          margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),

          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                TextField(
                  keyboardType: TextInputType.phone,

                  decoration: InputDecoration(
                      hintText: 'Digite seu número de telefone.',

                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      )),
                ),

                SizedBox(height: 20),

                TextField(
                  decoration: InputDecoration(
                      hintText: 'Digite seu nome',

                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      )),
                ),

                SizedBox(height: 20),

                TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                      hintText: 'Digite sua idade',
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      )),
                ),

                SizedBox(height: 20),

                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(16.0),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.red)),

                  child: DropdownButton<String>(
                    hint: Text('Gênero'),
                    value: genre,
                    elevation: 16,

                    style: TextStyle(color: Colors.deepPurple),

                    onChanged: (String newValue) {
                      setState(() {
                        genre = newValue;
                      });
                    },

                    underline: SizedBox.shrink(),

                    items: <String>['Masculino', 'Feminino']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(height: 10),

                RaisedButton(
                    onPressed: () {},
                    child: Text('Cadastrar'),
                    color: Colors.red,
                    hoverColor: Colors.white,
                    textColor: Colors.white,
                    
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)))
              ],
            ),
          )),
    );
  }
}
