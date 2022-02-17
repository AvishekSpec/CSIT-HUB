import 'package:csit/Pages/seventh.dart';
import 'package:csit/Questions/seventhq.dart';
import 'package:flutter/material.dart';

class SeventhSem extends StatelessWidget {
  const SeventhSem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                tabs: [
                  Text(
                    'Notes',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Old Questions',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              title: Text('Seventh Semester'),
            ),
            body: TabBarView(children: [
              SeventhSemNote(),
              SeventhQ(),
            ])));
  }
}
