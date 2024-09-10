import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ViewStatistic extends StatefulWidget {
  List<ChartData> charts;
  Color statisticColor;
  String statisticName;
  String statisticStatus;
  String updateTime;

  ViewStatistic({super.key,required this.charts,required this.statisticColor,required this.statisticName,required this.statisticStatus,required this.updateTime,});

  @override
  State<ViewStatistic> createState() => _ViewStatisticState();
}

class _ViewStatisticState extends State<ViewStatistic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SfCartesianChart(
                primaryXAxis: const CategoryAxis(),
                series: [
                  ColumnSeries<ChartData, String>(
                    dataSource: widget.charts,
                    xValueMapper: (ChartData data, _) => data.day,
                    yValueMapper: (ChartData data, _) => data.views,
                    color: widget.statisticColor,
                    width: 0.2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.statisticName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(widget.statisticStatus,style: TextStyle(color: Colors.grey,),),
            ],
          ),
        ),

        const Divider(),

        const SizedBox(height: 10,),

        Row(
          children: [
            const SizedBox(width: 20,),
            const Icon(Icons.access_time_filled_sharp,color: Colors.grey,),
            const SizedBox(width: 5,),
            Text(widget.updateTime,style: const TextStyle(color: Colors.grey,),),
          ],
        )
      ],
    );
  }

}

class ChartData {
  ChartData(this.day, this.views);
  final String day;
  final double views;
}
