
import 'package:flutter/material.dart';
import 'package:untitled3/screenes/programming/programming.dart';
import 'package:untitled3/screenes/psychology/psychology.dart';
import 'package:untitled3/screenes/romantic_stories/romantic.dart';
import 'package:untitled3/screenes/stories/stories.dart';

import 'kids_stories/kids_stories.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            style: TextStyle(fontSize: 20, color: Colors.amber), "THE BOOK"),
        backgroundColor: Colors.brown,
      ),
      endDrawer: CloseButton(color: Colors.amber),
      body: ListView(children: [
        Card(color: Colors.purple,
          child: ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Programming()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "Programming Languages"),
            textColor: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Stories()));
          },
          title: Text(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              "قصص متنوعه"),
          textColor: Colors.brown,
        ),
        SizedBox(height: 10),
        Card(color: Colors.indigo,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Romantic()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                " قصص رومانسيه"),
            textColor: Colors.red,
          ),
        ),
        SizedBox(height: 10),
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Kids()));
          },
          title: Text(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              "  قصص اطفال مصوره"),
          textColor: Colors.purple,
        ),
        SizedBox(height: 10),
        Card(color: Colors.deepPurple,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Psychology()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                " علم نفس وتطويرالذات "),
            textColor: Colors.orange,
          ),
        ),
      ]),
      backgroundColor: Colors.grey,
    );
  }
}
