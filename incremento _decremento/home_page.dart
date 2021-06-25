import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 10; // variable privada
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page: Incremento y Decremento'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.green[100],
        body: Center(
          child: Text(
            "$_contador",
            style: TextStyle(fontSize: 25),
            textScaleFactor: 1,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                     _contador = _contador + 2;
                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.pink[100],
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                     _contador = _contador - 3;
                  });
                },
                child: Icon(Icons.remove),
                backgroundColor: Colors.blue[100],
              ),
            ],
          ),
        ));
  }
}
