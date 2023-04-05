import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard(this.color,[this.childCard]);

  final Color color;
  Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration:  BoxDecoration(
        color:  color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: childCard,
    );
  }
}