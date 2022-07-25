// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // ignore: avoid_unnecessary_containers
  runApp(const AppWidget(title: 'Funcionou!',));
}
// widget são como componentes

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      // ignore: avoid_unnecessary_containers
      home: Container(
        child: const Center(child: Text('teste')),
      ),
    );
  }
}
