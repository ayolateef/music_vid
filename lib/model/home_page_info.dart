import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final double IconSize;

  const CardWidget(
      {super.key,
      required this.color,
      required this.icon,
      required this.IconSize});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          icon,
          size: IconSize,
           color: const Color(0xff884ad7),
        ),
      ),
    );
  }
}

class CardWidget2 extends StatelessWidget {
  final Color color;
  
  final Widget cardChild;

  const CardWidget2({
    super.key,
    required this.color,
     required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Card(
        elevation: 5,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: cardChild
            ),
      ),
    );
  }
}
