import 'package:flutter/material.dart';
import '../Screens/invoice_extraction_screen.dart';
import '../Screens/spend_classification_screen.dart';
import '../Screens/reporting_screen.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Widgets/Charts/bar_chart.dart';
import 'package:spend_analytics_project_fe/Widgets/Charts/line_chart.dart';
import '../Widgets/Charts/bar_chart.dart';

class ChartsScreen extends StatefulWidget {
  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  final mockedData = [
    QuarterSales('Q1', 5000),
    QuarterSales('Q2', 25000),
    QuarterSales('Q3', 100000),
    QuarterSales('Q4', 75000),
  ];

  final data = [
    LinearSales(0, 100),
    LinearSales(1, 75),
    LinearSales(2, 25),
    LinearSales(3, 5),
];

final sData = [
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Petcoke",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Cork",
      category: "Logistics",
      cluster: "Petcoke",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2500,
      rate: 23.5,
      total: 38000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Cement To Northfleet",
      category: "Logistics",
      cluster: "Cement",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 5500,
      rate: 12,
      total: 70000,
      uOM: "Tonne"),
  SpendData(
      supplier: "CEG Shipping",
      description: "Cement to IOM",
      category: "Logistics",
      cluster: "Cement",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 800,
      rate: 20,
      total: 16000,
      uOM: "Tonne"),
  SpendData(
      supplier: "BAM Shipping",
      description: "Bauxite To Dublin",
      category: "Logistics",
      cluster: "Bauxite",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Bauxite",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Petcoke",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Gypsum",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Bauxite",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Gypsum",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Clinker",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Clinker",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Cement",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Iron Silicate",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Petcoke",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "NH Chartering",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Cement",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Arklow Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Petcoke",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "Fast Shipping",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Cement",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "CRH CCT",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Petcoke",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne"),
  SpendData(
      supplier: "CRH CCT",
      description: "Pet Coke To Dublin",
      category: "Logistics",
      cluster: "Bauxite",
      invDate: DateTime.now(),
      invoiceNumber: "012132",
      poNumber: "5671313",
      qty: 2400,
      rate: 23,
      total: 35000,
      uOM: "Tonne")
];


  List<charts.Series<QuarterSales, String>> mapChartData(
      List<QuarterSales> data) {
    return [
      charts.Series<QuarterSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.indigo.shadeDefault,
        domainFn: (QuarterSales sales, _) => sales.quarter,
        measureFn: (QuarterSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  List<charts.Series<LinearSales, int>> mapPlotData(List<LinearSales> data){

       return [
       charts.Series<LinearSales, int>(
        id: 'Pin',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  List<charts.Series<SpendData, String>> mapClusterSpend(List<SpendData> data){
    return [
      charts.Series<SpendData, String>(
        id: "ClusterSpend",
        domainFn: (SpendData sData, _) => sData.cluster,
        measureFn: (SpendData sData, _) => sData.total,
        data: data
       )
    ];
  }

  PageController pageController = PageController(
    initialPage: 3,
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
                                 Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("11"),
                                        onTap: () {
                                          pageController.jumpToPage(0);
                                        },
                                      ),
                                 ),
                                                                  Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("12"),
                                        onTap: () {
                                          pageController.jumpToPage(1);
                                        },
                                      ),
                                 ),
                                                                  Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("13"),
                                        onTap: () {
                                          pageController.jumpToPage(2);
                                        },
                                      ),
                                 ),
                                
                              ],
                            ),
                                                        Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                 Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("14"),
                                        onTap: () {
                                          pageController.jumpToPage(3);
                                        },
                                      ),
                                 ),
                                                                  Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("15"),
                                        onTap: () {
                                          pageController.jumpToPage(2);
                                        },
                                      ),
                                 ),
                                                                  Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("16"),
                                        onTap: () {
                                          pageController.jumpToPage(1);
                                        },
                                      ),
                                 ),
                                
                              ],
                            ),
                                                        Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                 Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("17"),
                                        onTap: () {
                                          pageController.jumpToPage(0);
                                        },
                                      ),
                                 ),
                                                                  Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("18"),
                                        onTap: () {
                                          pageController.jumpToPage(1);
                                        },
                                      ),
                                 ),
                                                                  Material(
                                   color: Color(0xffF2F3F7),
                                                                    child: InkWell(
                                                                      
                                        child: ChartTile("19"),
                                        onTap: () {
                                          pageController.jumpToPage(0);
                                        },
                                      ),
                                 ),
                                
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
                child: Center(
                    child: Container(
                        height: 600,
                        width: 400,
                        child: PageView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: pageController,
                          children: <Widget>[
                            LineChart(),
                            SimpleBarChart(mapChartData(mockedData)),
                            ShapesScatterPlotChart(mapPlotData(data)),
                            SimpleBarChart(mapClusterSpend(sData))
                          ],
                        ))))
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
              style: TextStyle(color: Colors.grey),
            ),
            bottom: 10,
          )
        ],
      ),
    );
  }
}
