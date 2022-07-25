import 'package:flutter/material.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      // ignore: avoid_unnecessary_containers
      home: HomePage(),
    );
  }
}