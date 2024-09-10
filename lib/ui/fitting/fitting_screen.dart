import 'package:flutter/material.dart';
import 'package:project/ui/custom_drawer/custom_drawer.dart';

class FittingScreen extends StatefulWidget {
  const FittingScreen({super.key});

  @override
  State<FittingScreen> createState() => _FittingScreenState();
}

class _FittingScreenState extends State<FittingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text("Fitting Screen"),
      ),
    );
  }
}
