import 'package:csit/NavBar/Discussion.dart';
import 'package:csit/NavBar/events.dart';
import 'package:csit/syllabus/syllabus.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      color: Colors.blue[900],
      child: ListView(
        padding: padding,
        children: <Widget>[
          const SizedBox(height: 80),
          buildMenuItem(
            text: 'Syllabus',
            icon: Icons.picture_as_pdf,
            Onclicked: () => selectedItem(context, 0),
          ),
          const SizedBox(height: 20),
          buildMenuItem(
            text: 'Q/A Discusssions',
            icon: Icons.assignment,
            Onclicked: () => selectedItem(context, 1),
          ),
          const SizedBox(height: 20),
          buildMenuItem(
            text: 'Events And Notices',
            icon: Icons.event,
            Onclicked: () => selectedItem(context, 2),
          ),
          const SizedBox(height: 20),
          buildMenuItem(
            text: 'Rate App ',
            icon: Icons.star,
            Onclicked: () => selectedItem(context, 3),
          ),
          const SizedBox(height: 20),
          buildMenuItem(
            text: 'About US',
            icon: Icons.people,
            Onclicked: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text(' CSIT Notes'),
                content: SingleChildScrollView(
                    child: ListBody(children: <Widget>[
                  Text(
                      'CSIT Notes is a mobile application that provides a complete set of reference materials like notes,syllabus,old questions collections and many more for B.Sc,CSIT students.'),
                  SizedBox(height: 15),
                  Text('Developed By : Avishek Thapa'),
                  SizedBox(height: 15),
                  Text('Version: 1.0.0')
                ])),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Ok'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  void selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Syllabus(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Discussion(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Events(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Syllabus(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Syllabus(),
        ));
        break;
    }
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? Onclicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: Onclicked,
  );
}
