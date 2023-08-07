import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Box extends StatelessWidget {
  Color colour;
  Widget chotu;
  Box({required this.colour, required this.chotu});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: chotu,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}