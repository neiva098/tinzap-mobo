import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/logIn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' ;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

  final prefs = await SharedPreferences.getInstance();
  prefs.remove('id');
  final id = prefs.getString('id') != null ? prefs.getString('id') :  null;

  runApp(MyApp(id));
}

class MyApp extends StatelessWidget {
  final id;
  MyApp(this.id);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TinZap',
      theme: ThemeData(
        primaryColor: new Color(0xFFD50000),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: id != null ? TinzapHome() : LogInScreen(),
    );
  }
}
