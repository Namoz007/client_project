import 'package:flutter/material.dart';
import 'package:project/ui/custom_drawer/custom_drawer.dart';

class AggregationScreen extends StatefulWidget {
  const AggregationScreen({super.key});

  @override
  State<AggregationScreen> createState() => _AggregationScreenState();
}

class _AggregationScreenState extends State<AggregationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text("Aggregation Screen"),
      ),
    );
  }
}
