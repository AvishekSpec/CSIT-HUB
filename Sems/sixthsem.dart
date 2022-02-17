import 'package:csit/Pages/sixth.dart';
import 'package:csit/Questions/sixthq.dart';
import 'package:flutter/material.dart';

class SixthSem extends StatelessWidget {
  const SixthSem({Key? key}) : super(key: key);

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
                  ),
                ],
              ),
              title: Text('Sixth Semester'),
            ),
            body: TabBarView(children: [
              SixthSemNote(),
              SixthQ(),
            ])));
  }
}
