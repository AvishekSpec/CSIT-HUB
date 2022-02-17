import 'dart:io';
import 'package:flutter/services.dart';
import 'package:csit/api.dart';
import 'package:flutter/material.dart';
import 'package:csit/pdfviewer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import '../pdfviewer.dart';

class SeventhQ extends StatelessWidget {
  const SeventhQ({Key? key}) : super(key: key);

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
                    final url = '7thsem/adavanced_java.pdf';
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
                          'Advanced Java programming',
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
                    final url = '7thsem/dwdm.pdf';
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
                        'Data Warehousing And Data Mining',
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
                    final url = '5thsem/cryptography.pdf';
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
                        'Principles Of Management',
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
                    final url = '5thsem/simulation.pdf';
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
                        'Software Project Management ( Elective)',
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
