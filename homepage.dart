import 'package:csit/navbar.dart';
import 'package:flutter/material.dart';
import 'Sems/eighthsem.dart';
import 'Sems/fifthsem.dart';
import 'Sems/firstsem.dart';
import 'Sems/fourthsem.dart';
import 'Sems/secondsem.dart';
import 'Sems/seventhsem.dart';
import 'Sems/sixthsem.dart';
import 'Sems/thirdsem.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({Key? key}) : super(key: key);

  get child => null;

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('CSIT NOTES'),
      ),
      body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red[900],
                  ),
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'First Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightBlue[900],
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Second Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow[700],
                  ),
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Third Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FourthSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[900],
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Fourth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FifthSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink[600],
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Fifth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SixthSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange[900],
                  ),
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Sixth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SeventhSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[400],
                  ),
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Seventh Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EighthSem()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Eighth Semester',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
            ),
          ]),
    );
  }
}
