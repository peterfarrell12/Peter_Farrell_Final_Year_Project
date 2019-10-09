import 'package:flutter/material.dart';
import '../Screens/invoice_extraction_screen.dart';
import '../Screens/spend_classification_screen.dart';
import '../Screens/reporting_screen.dart';
import 'dart:math';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        color: Color(0xffF2F3F7),
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Text(
                          "Project Name Dashboard",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Divider(height: 5),
                    ),
                    Expanded(
                      child: Container(
                        child: ListView(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ChartTile("11"),
                                ChartTile("12"),
                                ChartTile("13"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ChartTile("1"),
                                ChartTile("2"),
                                ChartTile("3"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ChartTile("4"),
                                ChartTile("5"),
                                ChartTile("6"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
            Expanded(
              child: Container(
                color: Color(0xff3A3F54),
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: <Widget>[],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChartTile extends StatelessWidget {

    final List<IconData> iconList = [
    Icons.bubble_chart,
    Icons.pie_chart_outlined,
    Icons.multiline_chart,
    Icons.insert_chart,
    Icons.table_chart,
    Icons.account_box
  ];

  final _random = new Random();
  final num;

  ChartTile(this.num);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                //color: Colors.grey[100],
              ),
            ),
            FloatingActionButton(
              heroTag: num,
              onPressed: (){},
                elevation: 5,
                backgroundColor: Colors.white,
                child: Icon(
                  iconList[_random.nextInt(iconList.length)],
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                      .withOpacity(1.0),
                )),
            Positioned(
              child: Text(
                "Supplier Vs Spend",
                style: TextStyle( color: Colors.grey),
              ),
              bottom: 10,
            )
          ],
        ),
      ),
    );
  }
}
