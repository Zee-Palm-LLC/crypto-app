import 'package:crypto_app/data/constants.dart';
import 'package:crypto_app/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

import '../model/crpto_chart_model.dart';

class MyChartData extends StatefulWidget {
  MyChartData({Key? key}) : super(key: key);

  @override
  State<MyChartData> createState() => _MyChartDataState();
}

class _MyChartDataState extends State<MyChartData> {
  late TrackballBehavior _trackballBehavior;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
        lineType: TrackballLineType.vertical,
        tooltipSettings: InteractiveTooltip(format: 'point.x : point.y'),
        lineWidth: 4,
        enable: true,
        activationMode: ActivationMode.singleTap);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: 400.w,
      child: SfCartesianChart(
        trackballBehavior: _trackballBehavior,
        series: <CandleSeries>[
          CandleSeries<ChartSampleData, DateTime>(
              bearColor: CustomColor.kbearcolor,
              bullColor: CustomColor.kbullcolor,
              dataSource: myChartList,
              xValueMapper: (ChartSampleData sales, _) => sales.x,
              lowValueMapper: (ChartSampleData sales, _) => sales.low,
              highValueMapper: (ChartSampleData sales, _) => sales.high,
              openValueMapper: (ChartSampleData sales, _) => sales.open,
              closeValueMapper: (ChartSampleData sales, _) => sales.close)
        ],
        primaryXAxis: DateTimeAxis(
          labelStyle: TextStyle(color: CustomColor.kgrey),
          dateFormat: DateFormat.MMMd(),
        ),
        primaryYAxis: NumericAxis(
          labelStyle: TextStyle(
              color: CustomColor.kgrey,
              fontWeight: kBoldFontWeight,
              fontSize: 18.sp),
          minimum: 6000,
          maximum: 10000,
          interval: 1000,
          majorGridLines: MajorGridLines(width: 0),
          opposedPosition: true,
          numberFormat: NumberFormat.simpleCurrency(
            decimalDigits: 0,
          ),
        ),
      ),
    );
  }
}
