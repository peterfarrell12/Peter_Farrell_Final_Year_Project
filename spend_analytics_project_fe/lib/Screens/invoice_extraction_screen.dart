import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Screens/project_home_screen.dart';
import '../Models/project.dart';
import 'package:circular_check_box/circular_check_box.dart';
import '../Models/check.dart';
import '../Widgets/check_list.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import '../Widgets/page_builder.dart';


class InvoiceExtractionScreen extends StatefulWidget {

  @override
  _InvoiceExtractionScreenState createState() => _InvoiceExtractionScreenState();
}

class _InvoiceExtractionScreenState extends State<InvoiceExtractionScreen> {
    List<Check> _invoiceChecks = [
    Check(title: "Step One", description: "How To Do Step 1"),
    Check(title: "Step Two", description: "How To Do Step 2"),
    Check(title: "Step Three", description: "How To Do Step 3"),
    Check(title: "Step Four", description: "How To Do Step 4"),
  ];
  String title = "Invoice Extractor";
  String description = "The Invoice Extractor Works In Three Stages , Uploading, Validating and Downloading. \nAll Below Boxes Must Be Checked In Order For The Invoice Extractor To Work, Once These Are Checked The ZIP File Can Be Uploaded. Once Uploaded And Process You Will Automatically Be Sent To The Rossum Elis Validation Page Where You Can Validate The Data Coming From The Invoices. Once The Data Is Validated, It Can Be Downloaded From Here! Happy Extracting!";
  Color color = Colors.pinkAccent;

      void _updateCheck(bool value){
      setState(() {
              value = true;
            });
    }



  @override
  Widget build(BuildContext context) {
     return PageBuilder(title: title, description: description, invoiceChecks: _invoiceChecks, color: color, updateCheck: _updateCheck,);
    //Container(
    //   margin: EdgeInsets.all(15),
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.all(Radius.circular(20)),
    //       color: Colors.white),
    //   child: Row(
    //     children: <Widget>[
    //       Expanded(
    //         child: Container(
    //           margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
    //           //color: Colors.white,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: <Widget>[
    //                   Text("Invoice Extractor",
    //                       style: TextStyle(
    //                           color: Color(0xff242A41),
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 30)),
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 15,
    //               ),
    //               Container(
    //                 padding: EdgeInsets.all(5),
    //                 width: double.infinity,
    //                 //height: MediaQuery.of(context).size.height * 0.15,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.all(Radius.circular(15)),
    //                 ),
    //                 //color: Color(0xff3A3F54)),
    //                 child: Text(
    //                   "The Invoice Extractor Works In Three Stages , Uploading, Validating and Downloading. \nAll Below Boxes Must Be Checked In Order For The Invoice Extractor To Work, Once These Are Checked The ZIP File Can Be Uploaded. Once Uploaded And Process You Will Automatically Be Sent To The Rossum Elis Validation Page Where You Can Validate The Data Coming From The Invoices. Once The Data Is Validated, It Can Be Downloaded From Here! Happy Extracting!",
    //                   style: TextStyle(
    //                     color: Colors.grey,
    //                     fontSize: 11,
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               Text(
    //                 "Check List",
    //                 style: TextStyle(color: Color(0xff242A41), fontWeight: FontWeight.bold),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.symmetric(vertical: 10),
    //                 child: Divider(
    //                   height: 2,
    //                   color: Colors.pinkAccent,
    //                 ),
    //               ),
    //               CheckList(_invoiceChecks,),
    //               SizedBox(height: 20),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: <Widget>[
    //                   RaisedButton(
    //                     child: Text("Upload PDF File"),
    //                     color: Color(0xff3A3F54),
    //                     onPressed: (){},
    //                   ),
    //                   FloatingActionButton.extended(
    //                     label: Text("Extract My Data!", style: TextStyle(color: Colors.white),),
    //                     backgroundColor: Colors.pinkAccent,
    //                   )
    //                 ],
    //               )
    //             ]
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
