import 'package:flutter/material.dart';
import '../constants.dart';
import 'home_page_info.dart';

class ContainerWidget extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  const ContainerWidget({
    super.key,
    required this.colour,
   required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 200,
       width: double.infinity,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20.0)),
      child: cardChild
    );
  }
}
class ContainerWidget2 extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  const ContainerWidget2({
    super.key,
    required this.colour,
    required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(20.0)),
        child: cardChild);
  }
}

