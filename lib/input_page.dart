import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reuseable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
final bottomContainerColor = Colors.pink.shade600;


class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child:
                ReUseableWidget(
                  colour :activeCardColor,
                  cardChild: CardContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                )),
                Expanded(child:
                    ReUseableWidget(
                      colour : activeCardColor,
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
                colour : Color(0xFF1D1E33),
                cardChild: Container(),
              )
                       ),
          Expanded(
            child: Row(
              children: [
                Expanded(child:
                    ReUseableWidget(
                      colour : Color(0xFF1D1E33),
                      cardChild: Container(),
                    )
                          ),
                Expanded(child:
                ReUseableWidget(
                  colour : Color(0xFF1D1E33),
                  cardChild: Container(),
                ))
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top:15),
          )

        ],)

    );
  }
}




