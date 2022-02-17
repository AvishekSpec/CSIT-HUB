import 'dart:io';
import 'package:flutter/services.dart';
import 'package:csit/api.dart';
import 'package:flutter/material.dart';
import 'package:csit/pdfviewer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import '../pdfviewer.dart';

class Syllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Syllabus'),
      ),
      body: Center(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            children: <Widget>[
              GestureDetector(
                onTap: () async {
                  final url = '1stsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red[800],
                    ),
                    height: 70,
                    child: Center(
                      child: Text(
                        'First Semester',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final url = '2ndsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow[700],
                  ),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Second Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final url = '3rdsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Third Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final url = '4thsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink[700],
                  ),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Fourth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final url = '5thsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[500],
                  ),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Fifth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final url = '6thsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange[700],
                  ),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Sixth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final url = '7thsem.pdf';
                  final file = await PDFApi.loadFirebase(url);

                  openPDF(context, file!);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[500],
                  ),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Seventh Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  height: 70,
                  child: Center(
                    child: Text(
                      'Eighth Semester',
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
