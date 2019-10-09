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
  String description = "The Invoice Extractor Works In Three Stages , Uploading, Validating and Downloading. \nAll Below Boxes Must Be Checked In Order For The Invoice Extractor To Work, Once These Are Checked The ZIP File Can Be Uploaded. Once Uploaded And Process You Will Automatically Be Sent To The Rossum Elis Validation Page Where You Can Validate The Data Coming From The Invoices. Once The Data Is Validated, It Can Be Downloaded From Here! Happy Extracting!";
  Color color = Colors.blueAccent;
    String bText = "Classify My Data!";


      void _updateCheck(bool value){
      setState(() {
              value = true;
            });
    }
  @override
  Widget build(BuildContext context) {
    return PageBuilder(title: title, description: description, invoiceChecks: _invoiceChecks, color: color, updateCheck: _updateCheck,buttonText: bText,);
  }
}