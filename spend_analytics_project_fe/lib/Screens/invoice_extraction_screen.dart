import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Screens/project_home_screen.dart';
import '../Models/project.dart';

class InvoiceExtractionScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
          child: Row(
        children: <Widget>[
          Text("Invoice Extraction Screen", style: TextStyle(color: Colors.grey),),
          IconButton(icon: Icon(Icons.arrow_back),)
        ],
      ),
    );
  }
}

