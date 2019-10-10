import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {this.animate = true});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }
}

class ShapesScatterPlotChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  ShapesScatterPlotChart(this.seriesList, {this.animate});

  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
    );
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class QuarterSales {
  final String quarter;
  final double sales;

  QuarterSales(this.quarter, this.sales);
}

class SpendData {
  final String supplier;
  final String description;
  final String invoiceNumber;
  final String poNumber;
  final String cluster;
  final String uOM;
  final DateTime invDate;
  final double qty;
  final double rate;
  final double total;
  final String category;

  SpendData(
      {this.category,
      this.description,
      this.qty,
      this.rate,
      this.supplier,
      this.total,
      this.cluster,
      this.invDate,
      this.invoiceNumber,
      this.poNumber,
      this.uOM});
}

