import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/project.dart';
import '../Screens/project_home_screen.dart';

class SpendClassificationScreen extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueAccent, child: Row(
      children: <Widget>[
        Text("Spend Classification Screen"),
        IconButton(icon: Icon(Icons.arrow_back),)
      ],
    ),);
  }
}