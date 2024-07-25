import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/plantlistscreen.dart';
import 'package:my_app/widgets/indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app/screens/homescreen.dart';
class Onboardscreen extends StatefulWidget {
  const Onboardscreen({super.key, required this.index, required this.image});

  final int index;
  final String image;

  @override
  State<Onboardscreen> createState() => _OnboardscreenState();
}

class _OnboardscreenState extends State<Onboardscreen> {
  void initState() {
    super.initState();
    print(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(236, 236, 238, 255),
      child: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  child:  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PlantListScreen(),));
                      },child: Text('Skip'))))),
          Expanded(
            flex: 5,
            child: Lottie.asset('${widget.image}'),
          ),
          Expanded(
              flex: 1,
              child: Text(
                'Profile Screen, Page Index: ${widget.index}',
              )),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    3,
                    (indexValue) => Align(
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Indicator(
                                  active: widget.index == indexValue
                                      ? true
                                      : false)),
                        ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
