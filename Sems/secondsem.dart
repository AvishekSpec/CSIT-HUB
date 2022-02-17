import 'package:csit/Questions/Secondq.dart';
import 'package:flutter/material.dart';
import 'package:csit/Pages/second.dart';

class SecondSem extends StatelessWidget {
  const SecondSem({Key? key}) : super(key: key);

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
                    ' Notes',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Old Questions',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              title: Text('Second Semester'),
            ),
            body: TabBarView(children: [SecondSemNote(), SecondQ()])));
  }
}
