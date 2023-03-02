import 'package:bryan_portfolio_dev/app_module.dart';
import 'package:bryan_portfolio_dev/device/presentation/about_app_page.dart';
import 'package:flutter/material.dart';

void main() {
  AppModule.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AboutAppPage(),
    );
  }
}
