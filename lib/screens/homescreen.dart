import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/plantlistscreen.dart';
import 'package:my_app/screens/startScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Startscreen(),
                ));
          },
          child: Column(children: [
            Text('Home'),
            // PlantListScreen()
     
          ])),
    );
  }
}
