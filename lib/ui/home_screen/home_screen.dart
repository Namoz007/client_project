import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/ui/custom_drawer/custom_drawer.dart';
import 'package:project/widgets/home_screen_widgets/moneys.dart';
import 'package:project/widgets/home_screen_widgets/new_clients.dart';
import 'package:project/widgets/home_screen_widgets/sales.dart';
import 'package:project/widgets/home_screen_widgets/statistics.dart';
import 'package:project/widgets/home_screen_widgets/users.dart';
import 'package:project/widgets/home_screen_widgets/view_statistic.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: "Search",
            suffixIcon: const Icon(Icons.search),
          ),
        ),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Moneys(),
          const Users(),
          const NewClients(),
          const Sales(),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: ViewStatistic(
              charts: [
                ChartData('M', 50),
                ChartData('T', 20),
                ChartData('W', 10),
                ChartData('Th', 20),
                ChartData('F', 50),
                ChartData('Sa', 10),
                ChartData('Su', 40),
              ],
              statisticColor: Colors.green,
              statisticName: "Website View",
              statisticStatus: "Last campaign Performance",
              updateTime: "campaign sent 2 days ago",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Statistics(
              sales: [
                SalesData('Apr', 50),
                SalesData('May', 30),
                SalesData('June', 300),
                SalesData('July', 310),
                SalesData('Aug', 500),
                SalesData('Sep', 350),
                SalesData('Oct', 200),
                SalesData('Nov', 200),
                SalesData('Dec', 500),
              ],
              chartColor: Colors.blue,
              statisticTitle: "Daily Sales",
              statisticAbout: "15% increase in today sales",
              updateTime: "4 min",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Statistics(
              sales: [
                SalesData('Apr', 60),
                SalesData('May', 30),
                SalesData('June', 300),
                SalesData('July', 200),
                SalesData('Aug', 500),
                SalesData('Sep', 250),
                SalesData('Oct', 400),
                SalesData('Nov', 230),
                SalesData('Dec', 500),
              ],
              chartColor: Colors.green,
              statisticTitle: "Completed Tasks",
              statisticAbout: "Last Campaign Performance",
              updateTime: "just updated",
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
