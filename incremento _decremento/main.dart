import 'package:flutter/material.dart';
import 'package:incremento/pages/home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute:'home',
        routes: <String, WidgetBuilder>{
          'home' : (BuildContext context) => HomePage(),
        }
    );
  }
}