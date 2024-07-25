import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_app/screens/detailScreen.dart';
import 'package:my_app/widgets/plantcard.dart';
import 'package:my_app/widgets/screentop.dart';
import 'package:responsive_builder/responsive_builder.dart';


class PlantListScreen extends StatelessWidget {
  const PlantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 236, 238, 255),
      body: ScreenTypeLayout(mobile:  Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const Expanded(
                flex: 2, child: SingleChildScrollView(child: Screentop())),
            Expanded(
              flex: 8,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0
                      ? const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Found',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text('10 Results',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5)),
                          ],
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(plantIndex: index,),
                                ));
                          },
                          child: const Plantcard());
                },
                staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
                mainAxisSpacing: 40.0,
                crossAxisSpacing: 40.0,
              ),
            ),
          ],
        ),
      ),
      desktop: const Text('the desktop app is under construction'),)
    );
  }
}
