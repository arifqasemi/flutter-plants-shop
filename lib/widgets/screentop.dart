import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/screens/startScreen.dart';

class Screentop extends StatefulWidget {
  const Screentop({super.key});

  @override
  State<Screentop> createState() => _ScreentopState();
}

class _ScreentopState extends State<Screentop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Startscreen(),));
          },child: Icon(Icons.arrow_back)),
          const Text(
            'Search Products',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/profile.jpg',
                height: 30,
                width: 30,
              ))
        ],
      ),
      const SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child:TextField(
                onChanged: (value) {
                  // ignore: avoid_print
                  print(value);
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                )
              )
          ),
         const SizedBox(width: 10,),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: const Align(
                      alignment: Alignment.center,
                      child: FaIcon(
                        FontAwesomeIcons.sliders,
                        size: 20.0, // Adjust the size as needed
                        color: Color.fromARGB(
                            255, 0, 0, 0), // Adjust the color as needed
                      )))),
        ],
      )
    ]));
  }
}
