import 'package:flutter/material.dart';
import '../Screens/invoice_extraction_screen.dart';
import '../Screens/spend_classification_screen.dart';
import '../Screens/reporting_screen.dart';

class ProjectHome extends StatefulWidget {
  @override
  _ProjectHomeState createState() => _ProjectHomeState();
}

class _ProjectHomeState extends State<ProjectHome> {
  var currentPage = InvoiceExtractionScreen();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff242A41),
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 80, horizontal: 100),
                //color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Project Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Welcome Back, We Missed You!',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Color(0xff3A3F54)),
                      child: TextField(
                          decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Project File...",
                        contentPadding: EdgeInsets.all(5),
                        hintStyle: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        icon: Icon(Icons.search),
                      )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentPage = InvoiceExtractionScreen();
                                });
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                elevation: 5,
                                margin: EdgeInsets.all(10),
                                color: Colors.pinkAccent,
                                child: Container(
                                  width: double.infinity,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Center(
                                      child: Text(
                                    "INVOICE EXTRACTION",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                            Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                elevation: 5,
                                margin: EdgeInsets.all(10),
                                color: Colors.blueAccent,
                                child: Container(
                                  width: double.infinity,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15))),
                                  child: Center(
                                      child: Text(
                                    "SPEND CLASSIFICATION",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              elevation: 5,
                              margin: EdgeInsets.all(10),
                              color: Colors.greenAccent,
                              child: Container(
                                width: double.infinity,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
                                    child: Text(
                                  "REPORTING",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: PageController(),
                  children: <Widget>[
                    InvoiceExtractionScreen(),
                    SpendClassificationScreen(),
                    ReportingScreen()
                  ],
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
