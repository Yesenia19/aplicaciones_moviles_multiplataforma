import 'package:flutter/material.dart';
import 'package:login_flutter/pages/home_page.dart';
import 'package:login_flutter/pages/login_page.dart';
import 'package:login_flutter/pages/registro_page.dart';
import 'package:login_flutter/pages/read_page.dart';
import 'package:login_flutter/pages/write_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.lightBlue[800],
      ),
      initialRoute: 'login',
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'login' : (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'read': (BuildContext context) => ReadPage(),
        'write': (BuildContext context) => WritePage(),
      },
    );
  }
}
