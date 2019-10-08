import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/project.dart';
import '../Screens/project_home_screen.dart';

class ReportingScreen extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.greenAccent, child: Row(
      children: <Widget>[
        Text("Reporting Screen Screen"),
        IconButton(icon: Icon(Icons.arrow_back),)
      ],
    ),);
  }
}

