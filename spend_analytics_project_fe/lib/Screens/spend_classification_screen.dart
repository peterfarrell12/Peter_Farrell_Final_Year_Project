import 'package:flutter/material.dart';
import '../Models/check.dart';
import '../Widgets/page_builder.dart';



class SpendClassificationScreen extends StatefulWidget {


  SpendClassificationScreen();

  @override
  _SpendClassificationScreenState createState() => _SpendClassificationScreenState();
}

class _SpendClassificationScreenState extends State<SpendClassificationScreen> {
      List<Check> _invoiceChecks = [
    Check(title: "Step One", description: "How To Do Step 1"),
    Check(title: "Step Two", description: "How To Do Step 2"),
    Check(title: "Step Three", description: "How To Do Step 3"),
    Check(title: "Step Four", description: "How To Do Step 4"),
  ];
  String title = "Spend Classification";
  String description = "This is The Spend Classifier Description";
  Color color = Colors.blueAccent;

      void _updateCheck(bool value){
      setState(() {
              value = true;
            });
    }
  @override
  Widget build(BuildContext context) {
    return PageBuilder(title: title, description: description, invoiceChecks: _invoiceChecks, color: color, updateCheck: _updateCheck,);
  }
}