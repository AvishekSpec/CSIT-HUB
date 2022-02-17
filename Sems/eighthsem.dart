import 'package:csit/Pages/eighth.dart';
import 'package:csit/Questions/eighthq.dart';
import 'package:flutter/material.dart';

class EighthSem extends StatelessWidget {
  const EighthSem({Key? key}) : super(key: key);

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
              title: Text('Eighth Semester'),
            ),
            body: TabBarView(children: [
              EighthSemNote(),
              EighthQ(),
            ])));
  }
}
