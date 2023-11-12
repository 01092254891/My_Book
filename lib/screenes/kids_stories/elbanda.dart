
import 'package:flutter/material.dart';
import "package:syncfusion_flutter_pdfviewer/pdfviewer.dart";
import 'package:untitled3/screenes/psychology/elfoustok.dart';

class ELbandaELsera extends ELFoustk {
  ELbandaELsera({Key? key}) : super(key: key);
  PdfViewerController pdfViewerControllor = PdfViewerController();
  double zoom = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        title: Text(
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            "البندا الصغيره وامها"),
        actions: [
          IconButton(
              onPressed: () {
                pdfViewerControllor.previousPage();
              },
              icon: Icon(Icons.arrow_back_ios)),
          IconButton(
              onPressed: () {
                pdfViewerControllor.nextPage();
              },
              icon: Icon(Icons.arrow_forward_ios)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SfPdfViewer.asset(
        "assets/elbanda_elsaera.pdf",
        controller: pdfViewerControllor,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                pdfViewerControllor.zoomLevel = zoom + 1;
                zoom++;
              },
              icon: Icon(Icons.zoom_in)),
          IconButton(
              onPressed: () {
                pdfViewerControllor.zoomLevel = 0.0;
              },
              icon: Icon(Icons.zoom_out)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
