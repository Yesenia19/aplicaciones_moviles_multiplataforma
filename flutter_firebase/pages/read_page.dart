import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReadPage extends StatefulWidget {
  ReadPage({Key? key}) : super(key: key);

  @override 
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {

  List<String> items = [];
  bool reading = true;

  Future<void> readData() async{
    try{
      var url = Uri.parse(
        "https://proyecto-final-bd379-default-rtdb.firebaseio.com/Agenda.json");

      var response = await http.get(url);
      var data = json.decode(response.body);

      items.clear();
      data.forEach((key, value){
        items.add(value["nombre"]);
        items.add(value["email"]);
      });
      setState(() {
        reading = false;
      });

    } catch (error) {
      print(error.toString());
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Leer datos'),
      ), 
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index){
          return Container(
            child: Text(items[index]),
          );
        }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            children: <Widget>[
              FloatingActionButton.extended(
                  onPressed:readData, label: Text("Read data")
              ),
              FloatingActionButton.extended(
                label: Text('Insertar datos'),
                onPressed: () {
                  Navigator.pushNamed(context, 'write');
                })
           ],
          ),
        )
    );    
  } 

}




