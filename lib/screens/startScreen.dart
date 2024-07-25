import 'package:flutter/material.dart';
import 'package:my_app/models/pages.dart';
import 'package:my_app/screens/onboardscreen.dart';
// import 'package:my_app/screens/profilescreen.dart';
// import 'package:my_app/screens/detailScreen.dart';
// import 'package:my_app/screens/mainscreen.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {

  final List<Pages> _pageData = const [
    Pages(title: 'test', image: 'assets/animation/Animation-2.json', description: 'description'),
    Pages(title: 'test2', image: 'assets/animation/Animation-1.json', description: 'description'),
    Pages(title: 'test3', image: 'assets/animation/Animation.json', description: 'description'),
  ];
  
  late PageController _controller;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0); // Initialize the PageController
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: _pageData.length,
        onPageChanged: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return  Onboardscreen(index: pageIndex,image:_pageData[pageIndex].image);
        },
      ),
    );
  }
}
