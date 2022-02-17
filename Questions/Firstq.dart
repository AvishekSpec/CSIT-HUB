import 'dart:io';
import 'package:flutter/services.dart';
import 'package:csit/api.dart';
import 'package:flutter/material.dart';
import 'package:csit/pdfviewer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import '../pdfviewer.dart';

class FirstQ extends StatelessWidget {
  const FirstQ({Key? key}) : super(key: key);

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
                    final url = '1stsem/iit.pdf';
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
                          'Introduction To Information Technology',
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
                    final url = '1stsem/cprogramming.pdf';
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
                        'C Programming',
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
                    final url = '1stsen/dl.pdf';
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
                        'Digital Logic',
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
                    final url = '1stsem/math1.pdf';
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
                        'Mathematics I',
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
                    final url = '1stsem/physics.pdf';
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
                        'Physics',
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
