import 'package:csit/Pages/third.dart';
import 'package:csit/Questions/thirdq.dart';
import 'package:flutter/material.dart';

class ThirdSem extends StatelessWidget {
  const ThirdSem({Key? key}) : super(key: key);

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
              title: Text('Third Semester'),
            ),
            body: TabBarView(children: [ThirdSemNote(), ThirdQ()])));
  }
}
