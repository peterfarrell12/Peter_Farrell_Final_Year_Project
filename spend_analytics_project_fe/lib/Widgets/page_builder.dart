import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Screens/project_home_screen.dart';
import '../Models/project.dart';
import '../Models/check.dart';
import '../Widgets/check_list.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import '../Screens/dashboard_screen.dart';

class PageBuilder extends StatefulWidget {
  final Function updateCheck;
  final List<Check> invoiceChecks;
  final String title;
  final String description;
  final Color color;
  final String buttonText;

  PageBuilder(
      {this.description,
      this.title,
      this.invoiceChecks,
      this.updateCheck,
      this.color,
      this.buttonText});

  @override
  _PageBuilderState createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                //color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(widget.title,
                              style: TextStyle(
                                  color: Color(0xff242A41),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        //height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        //color: Color(0xff3A3F54)),
                        child: Text(
                          widget.description,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Check List",
                        style: TextStyle(
                            color: Color(0xff242A41),
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Divider(
                          height: 2,
                          color: widget.color,
                        ),
                      ),
                      CheckList(widget.invoiceChecks, widget.color),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RaisedButton(
                            child: Text(
                              "Upload PDF File",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Color(0xff3A3F54),
                            onPressed: () {},
                          ),
                          FloatingActionButton.extended(
                            label: Text(
                              widget.buttonText,
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: widget.color,
                            onPressed: () {
                                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DashboardScreen()),
  );
                            },
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
