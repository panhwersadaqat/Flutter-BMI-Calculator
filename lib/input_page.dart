import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardActiveColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children:  <Widget>[
          Expanded(child: Row(
            children:  <Widget>[
              Expanded(
                  child: ReusableCard(
                   cardActiveColor,
                  )
              ),
              Expanded
                (child: ReusableCard(
                 cardActiveColor
              )
              )
            ],
          )),
            Expanded(
              child: ReusableCard(
                 cardActiveColor
              )
          ),
          Expanded(child: Row(
            children: <Widget> [
              Expanded(
                  child: ReusableCard(
                      cardActiveColor
                  )
              ),
              Expanded(
                  child: ReusableCard(
                     cardActiveColor
                  )
              )
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      )
    );
  }
}

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
    );
  }
}