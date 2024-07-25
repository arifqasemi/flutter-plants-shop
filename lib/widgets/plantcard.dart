import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Plantcard extends StatefulWidget {
  const Plantcard({super.key});

  @override
  State<Plantcard> createState() => _PlantcardState();
}

class _PlantcardState extends State<Plantcard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 250,
        width: 50,
        decoration:
            BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255)),
        child: Column(children: [
          Image.asset('assets/images/flower1.png',height: 140,),
          const  SizedBox(height: 20,),
        const  Text('Lucky Jade Plant'),
        const  SizedBox(height: 20,),
        const  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '12.99',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )])), FaIcon(
              FontAwesomeIcons.heart,
              size: 20.0,
              color: Color.fromARGB(255, 16, 16, 16),
            )],
          )
        ]),
      ),
    );
  }
}
