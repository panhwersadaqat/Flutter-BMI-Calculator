import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  // 1 = male,
  // 0 = female
  void updateColor(int gender) {
    if(gender == 1) {
      if(maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      }else {
        maleCardColor = inActiveCardColor;
      }
    }

    if(gender == 0) {
      if(femaleCardColor == inActiveCardColor) {
      femaleCardColor = activeCardColor;
      maleCardColor = inActiveCardColor;
      }else{
      femaleCardColor = inActiveCardColor;
      }
    }
  }


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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                        maleCardColor,
                        IconContent(text:'MALE',icon: FontAwesomeIcons.mars)
                    ),
                  )
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(0);
                      });
                    },
                    child: ReusableCard(
                        femaleCardColor,
                        IconContent(text:'FEMALE',icon: FontAwesomeIcons.venus)
              ),
                  )
              )
            ],
          )),
            Expanded(
              child: ReusableCard(
                  activeCardColor
              )
          ),
          Expanded(child: Row(
            children: <Widget> [
              Expanded(
                  child: ReusableCard(
                      activeCardColor
                  )
              ),
              Expanded(
                  child: ReusableCard(
                      activeCardColor
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