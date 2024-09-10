import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../ui/home_screen/home_screen.dart';

class Statistics extends StatefulWidget {
  List<SalesData> sales;
  Color chartColor;
  String statisticTitle;
  String statisticAbout;
  String updateTime;
  Statistics({
    super.key,
    required this.sales,
    required this.chartColor,
    required this.statisticAbout,
    required this.statisticTitle,
    required this.updateTime,
  });

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SfCartesianChart(
                primaryXAxis: const CategoryAxis(),
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                    dataSource: widget.sales,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    markerSettings: MarkerSettings(
                        isVisible: true,
                        shape: DataMarkerType.circle,
                        borderWidth: 4,
                        color: widget.chartColor),
                    color: widget.chartColor,
                    width: 3,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.statisticTitle,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                widget.statisticAbout,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(width: 20,),
            Icon(
              Icons.access_time_filled_sharp,
              color: Colors.grey,
            ),
            SizedBox(width: 5,),
            Text(widget.updateTime,style: TextStyle(color: Colors.grey,),),
          ],
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
