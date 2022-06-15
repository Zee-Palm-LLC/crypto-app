import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../model/spline_graph_model.dart';

class Splinegraph extends StatefulWidget {
  final Color iconcolor;
  final List<ChartData> cdata;
  const Splinegraph({Key? key, required this.iconcolor, required this.cdata})
      : super(key: key);

  @override
  State<Splinegraph> createState() => _SplinegraphState();
}

class _SplinegraphState extends State<Splinegraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140.h,
        width: 170.w,
        color: Colors.transparent,
        child: SfCartesianChart(
            plotAreaBorderWidth: 0,
            primaryXAxis: CategoryAxis(
              isVisible: false,
            ),
            primaryYAxis: NumericAxis(isVisible: false),
            series: <ChartSeries>[
              SplineSeries<ChartData, int>(
                dataSource: widget.cdata,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                color: widget.iconcolor,
              )
            ]));
  }
}
