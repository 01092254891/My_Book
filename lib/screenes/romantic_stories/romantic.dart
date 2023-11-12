
import 'package:flutter/material.dart';
import 'package:untitled3/screenes/romantic_stories/altaka.dart';
import 'package:untitled3/screenes/romantic_stories/hazian_ashich.dart';

class Romantic extends StatelessWidget {
  const Romantic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),

      body: ListView(children: [
        Card(color: Colors.deepOrange,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Hazian()));
            },
            title: Text(
                style: TextStyle(
                  fontSize: 20,
                ),
                " هذيان عاشق"),
            textColor: Colors.black87,
          ),
        ),
        SizedBox(height: 10),
        Card(color:Colors.red,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Altaka()));
            },
            title: Text(style: TextStyle(fontSize: 20), "التقئ به"),
            textColor: Colors.black87,
          ),
        )
      ]),
      backgroundColor: Colors.purpleAccent,
    );
  }
}
