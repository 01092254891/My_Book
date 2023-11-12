
import 'package:flutter/material.dart';
import 'package:untitled3/screenes/psychology/akstasy.dart';
import 'package:untitled3/screenes/psychology/elfoustok.dart';
import 'package:untitled3/screenes/psychology/frasa.dart';
import 'package:untitled3/screenes/psychology/kanon_elkoa.dart';

class Psychology extends StatelessWidget {
  const Psychology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

      body: ListView(children: [
        Card(color: Colors.white10,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Frasa()));
            },
            title: Text(
                style: TextStyle(
                  fontSize: 25,
                ),
                "فراسه"),
            textColor: Colors.deepPurple,
          ),
        ),
        SizedBox(height: 10),
        Card(color: Colors.white38,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>Akstasy()));
            },
            title: Text(style: TextStyle(fontSize: 20), "اكستاسي"),
            textColor: Colors.brown,
          ),
        ),SizedBox(height: 10),
        Card(color: Colors.white60,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>KanonELkoa()));
            },
            title: Text(style: TextStyle(fontSize: 20), "48قانون للقوه"),
            textColor: Colors.indigo,
          ),
        ),SizedBox(height: 10),
        Card(color: Colors.white60,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) =>ELFoustk()));
            },
            title: Text(style: TextStyle(fontSize: 20), "نظريه الفستق"),
            textColor: Colors.indigo,
          ),
        )
      ]),
      backgroundColor: Colors.white70,
    );
  }
}
