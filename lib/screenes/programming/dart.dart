import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Dart extends StatefulWidget {
  const Dart({Key? key}) : super(key: key);

  @override
  State<Dart> createState() => _DartState();
}

class _DartState extends State<Dart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SfPdfViewer.network(
          "https://spec.dart.dev/DartLangSpecDraft.pdf"),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.zoom_in)),
          IconButton(onPressed: () {}, icon: Icon(Icons.zoom_out)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
