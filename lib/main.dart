import 'package:flutter/material.dart';
import 'package:my_app/screens/plantlistscreen.dart';
import 'package:my_app/screens/startScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Startscreen()
      ),
    );
  }
}
