import 'package:flutter/material.dart';
import 'inputpage.dart';
void main() => runApp(BMIcalc());

class BMIcalc extends StatelessWidget {
  const BMIcalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 24, 1, 49),
      ),
      home: inputpage(),
    );
  }
}