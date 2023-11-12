
import 'package:flutter/material.dart';
import 'package:untitled3/screenes/programming/C.dart';
import 'package:untitled3/screenes/programming/dart.dart';

class Programming extends StatelessWidget {
  const Programming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: ListView(children: [
        Card(color:Colors.deepPurpleAccent ,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Dart()));
            },
            title: Text(style: TextStyle(fontSize: 20), "Dart"),
            textColor: Colors.black87,
          ),
        ),Card(color:Colors.deepPurpleAccent ,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => C()));
            },
            title: Text(style: TextStyle(fontSize: 20), "C++"),
            textColor: Colors.red,
          ),
        ),Card(color:Colors.deepPurpleAccent ,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => C()));
            },
            title: Text(style: TextStyle(fontSize: 20), "C++"),
            textColor: Colors.red,
          ),
        )
      ]),
      backgroundColor: Colors.white70,
    );
  }
}
