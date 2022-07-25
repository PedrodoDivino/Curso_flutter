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
    return Container(
      child:  Center(
        child: Text(
         title,
          textDirection: TextDirection.ltr,
          style: const TextStyle(color: Color.fromARGB(255, 92, 76, 163), fontSize: 50.0),
        ),
      ),
    );
  }
}
