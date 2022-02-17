import 'package:csit/Pages/First.dart';

import 'package:csit/Questions/Firstq.dart';
import 'package:flutter/material.dart';

class FirstSem extends StatelessWidget {
  const FirstSem({Key? key}) : super(key: key);

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
              title: Text('First Semester'),
            ),
            body: TabBarView(children: [
              FirstSemNote(),
              FirstQ(),
            ])));
  }
}
