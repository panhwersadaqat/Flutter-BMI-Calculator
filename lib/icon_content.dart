import 'package:flutter/material.dart';

const textColor = Color(0xFF8D8E98);
const labelTextStyle = TextStyle(
color: textColor,
fontSize: 18.0
);

class IconContent extends StatelessWidget {
  IconContent({required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  <Widget>[
        Icon(
          icon,
          size: 60.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: labelTextStyle, 
        )
      ],
    );
  }
}