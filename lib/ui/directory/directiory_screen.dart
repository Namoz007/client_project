import 'package:flutter/material.dart';
import 'package:project/ui/custom_drawer/custom_drawer.dart';

class DirectioryScreen extends StatefulWidget {
  const DirectioryScreen({super.key});

  @override
  State<DirectioryScreen> createState() => _DirectioryScreenState();
}

class _DirectioryScreenState extends State<DirectioryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text("Directory Screen"),
      ),
    );
  }
}
