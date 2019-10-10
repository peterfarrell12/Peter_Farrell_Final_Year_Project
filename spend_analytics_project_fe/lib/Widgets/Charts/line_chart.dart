import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatelessWidget {
  const LineChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: 'Half Yearly Sales Analysis'), //Chart title.
      legend: Legend(isVisible: true),
      zoomPanBehavior: ZoomPanBehavior(
        enablePinching: true
      ),
      tooltipBehavior: TooltipBehavior(enable: true), // Enables the legend.
      //tooltipBehavior: ChartTooltipBehavior(enable: true), // Enables the tooltip.
      series: <LineSeries<SalesData, String>>[
        LineSeries<SalesData, String>(
          dataSource: [
            SalesData('Jan', 35),
            SalesData('Feb', 28),
            SalesData('Mar', 34),
            SalesData('Apr', 32),
            SalesData('May', 40)
          ],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
          dataLabelSettings: DataLabelSettings(isVisible: true) // Enables the data label.
        )
      ]
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

