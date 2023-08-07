import 'package:flutter/material.dart';

class boxcontent extends StatelessWidget {
  final IconData icon;
  final String data;
  boxcontent({required this.icon, required this.data});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 85.0,
        ),
        SizedBox(height: 20.0),
        Text(
          data,
          style: TextStyle(
              fontSize: 20.0, color: Color.fromARGB(255, 248, 207, 118)),
        )
      ],
    );
  }
}