import 'package:flutter/material.dart';

class Indicator extends StatefulWidget {
  const Indicator({super.key, required this.active});

  final bool active;

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.active
            ? Container(
                height: 7,
                width: 20,
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(2),color: Color(0x760ABA6B))
               )
            : Container(
                height: 7,
                width: 20,
                 decoration: BoxDecoration(
            color:Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(2),
          ),
               )
      ],
    );
  }
}
