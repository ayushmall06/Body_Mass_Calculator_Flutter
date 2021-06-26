import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reuseable_card.dart';
import 'constants.dart';

enum Gender{
  male,
  female,
  other
}


class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.other;

  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child:
                ReUseableWidget(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour : selectedGender == Gender.male? kActiveCardColor : kInActiveCardColor,
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                )),
                Expanded(child:
                    ReUseableWidget(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour : selectedGender == Gender.female ? kActiveCardColor : kInActiveCardColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',

                      ),
                    )
                 ),
              ],
            ),

          ),
          Expanded(child:
              ReUseableWidget(
                onPress: () {},

                colour : Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("HEIGHT",
                    style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text('cm',
                        style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: Colors.pink,
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        trackHeight: 1.0,

                      ),

                      child: Slider(

                        value: height.toDouble(),
                        min: 50.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                            print(newValue.toInt());
                          });
                        },


                      ),
                    )
                  ],
                ),
              )
                       ),
          Expanded(
            child: Row(
              children: [
                Expanded(child:
                    ReUseableWidget(
                      onPress: () {},
                      colour : Color(0xFF1D1E33),
                      cardChild: Container(),
                    )
                          ),
                Expanded(child:
                ReUseableWidget(
                  onPress: () {},
                  colour : Color(0xFF1D1E33),
                  cardChild: Container(),
                ))
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            width: double.infinity,
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top:15),
            child: Center(
              child: Text('CALCULATE',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w300
              ),),
            ),
          )

        ],)

    );
  }
}




