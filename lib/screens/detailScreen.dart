import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/plantlistscreen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.plantIndex});
  final int plantIndex;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 238, 255),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlantListScreen(),
                            ));
                      },
                      child: Icon(Icons.arrow_back)),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            Image.asset('assets/images/2.png'),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Container(
                width: double.infinity,
                color: Color.fromARGB(139, 255, 255, 255),
                
                child: const Column(
                  children: [
                      SizedBox(
                      height: 20,
                    ),
                     Text(
                      'Lucky-Jade-Plante',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                      SizedBox(
                      height: 20,
                    ),
                     Text('Total Price:'),
                      Text.rich(TextSpan(children: [
                      TextSpan(
                        text: '\$',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '12.99',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ])),
                      SizedBox(
                      height: 20,
                    ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('Plants make your life with minimal and happy love the plants more and enjoy life')
                            )
                            ),
                               SizedBox(
                      height: 40,
                    ),
                            // OutlinedButton(onPressed: () {
                              
                            // }, child:const Text('Add To Cart'))
                     ],
                ),
              ),
            ))
          ],
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 15),
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          onPressed: () {},
          child: const Text(
            'Buy',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
