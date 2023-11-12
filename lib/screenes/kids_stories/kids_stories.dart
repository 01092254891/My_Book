
import 'package:flutter/material.dart';
import 'package:untitled3/screenes/kids_stories/alosh_elkt.dart';
import 'package:untitled3/screenes/kids_stories/elbanda.dart';
import 'package:untitled3/screenes/kids_stories/elboma.dart';
import 'package:untitled3/screenes/kids_stories/elfar_garger.dart';
import 'package:untitled3/screenes/kids_stories/elhmama.dart';

class Kids extends StatelessWidget {
  const Kids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(children: [
        Card(
          color: Colors.cyan,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OstortELhamamaELbedaa()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "اسطوره الحمامه البيضاء"),
            textColor: Colors.purple,
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ELbandaELsera()));
          },
          title: Text(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              "البندا الصغيره وامها"),
          textColor: Colors.indigo,
        ),
        Card(
          color: Colors.cyanAccent,
          child: ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ELbomaELareba()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "البومه الغريبه"),
            textColor: Colors.purple,
          ),
        ),
        SizedBox(height: 10),
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AloshELkt()));
          },
          title: Text(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              "علوش والقط  "),
          textColor: Colors.brown,
        ),
        Card(
          color: Colors.purpleAccent,
          child: ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ELFarGarger()));
            },
            title: Text(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                "   الفأر جرجير"),
            textColor: Colors.black87,
          ),
        )
      ]),
      backgroundColor: Colors.white,
    );
  }
}
