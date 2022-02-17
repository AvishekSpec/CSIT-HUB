import 'package:csit/Pages/fourth.dart';
import 'package:csit/Questions/fourthq.dart';
import 'package:flutter/material.dart';

class FourthSem extends StatelessWidget {
  const FourthSem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              bottom: TabBar(
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
              title: Text('Fourth Semester'),
            ),
            body: TabBarView(children: [FourthSemNote(), FourthQ()])));
  }
}
