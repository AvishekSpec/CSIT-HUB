import 'package:csit/Pages/fifth.dart';
import 'package:csit/Questions/fifthq.dart';
import 'package:flutter/material.dart';

class FifthSem extends StatelessWidget {
  const FifthSem({Key? key}) : super(key: key);

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
                    'Past Questions',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              title: Text('Fifth Semester'),
            ),
            body: TabBarView(children: [
              FifthSemNote(),
              FifthQ(),
            ])));
  }
}
