
import 'package:flutter/material.dart';
import 'package:untitled3/screenes/stories/drabat.dart';
import 'package:untitled3/screenes/stories/nos_wish.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(children: [
        Card(color: Colors.amber,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Drabat()));
            },
            title: Text(
                style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
                ),
                "ضربات لا ترحم"),
            textColor: Colors.deepPurple,
          ),
        ),
        SizedBox(height: 10),
        Card(color: Colors.amberAccent,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NosWish()));
            },
            title: Text(style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold), "نوص وش"),
            textColor: Colors.deepOrange,
          ),
        )
      ]),
      backgroundColor: Colors.orange,
    );
  }
}
