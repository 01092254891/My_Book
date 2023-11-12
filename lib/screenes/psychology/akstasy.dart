import 'package:flutter/material.dart';
import "package:syncfusion_flutter_pdfviewer/pdfviewer.dart";

class Akstasy extends StatelessWidget {
  Akstasy({Key? key}) : super(key: key);
  PdfViewerController pdfViewerControllor = PdfViewerController();
  double zoom = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,
        title: Text("اكستاسي"),
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
        "assets/akstasy.pdf",
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
