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

  Gender? selectedGender;

  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

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
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                        selectedGender == Gender.male ? activeCardColor : inActiveCardColor,
                        IconContent(text:'MALE',icon: FontAwesomeIcons.mars)
                    ),
                  )
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                        selectedGender == Gender.female ? activeCardColor : inActiveCardColor,
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

enum Gender {
  male,
  female
}