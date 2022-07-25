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
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red,
      brightness:Brightness.dark ),
      home: HomePage(), 
    );
  }
}