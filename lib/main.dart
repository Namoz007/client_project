import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/app_utils/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.config,
    );
  }
}
