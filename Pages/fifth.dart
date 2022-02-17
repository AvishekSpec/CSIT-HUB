import 'dart:io';
import 'package:flutter/services.dart';
import 'package:csit/api.dart';
import 'package:flutter/material.dart';
import 'package:csit/pdfviewer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import '../pdfviewer.dart';

class FifthSemNote extends StatelessWidget {
  const FifthSemNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 65),
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    final url = 'DAA.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    openPDF(context, file!);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red[800],
                      ),
                      height: 85,
                      child: Center(
                        child: Text(
                          'Design Analysis And Algorithm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    final url = 'SAD.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    openPDF(context, file!);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow[700],
                    ),
                    height: 85,
                    child: Center(
                      child: Text(
                        'System Analysis And Design',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    final url = 'Cryptography.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    openPDF(context, file!);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[900],
                    ),
                    height: 85,
                    child: Center(
                      child: Text(
                        'Cryptography',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    final url = 'SM.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    openPDF(context, file!);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink[700],
                    ),
                    height: 85,
                    child: Center(
                      child: Text(
                        'Simulation And Modelling',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    final url = 'web.pdf';
                    final file = await PDFApi.loadFirebase(url);

                    openPDF(context, file!);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[500],
                    ),
                    height: 85,
                    child: Center(
                      child: Text(
                        'Web Technology',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => PDFViewerPage(
                  file: file,
                )),
      );
}
