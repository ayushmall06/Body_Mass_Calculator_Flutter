import 'package:flutter/material.dart';




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
            child: Expanded(
              child: Row(
                children: [
                  Expanded(child: ReUseableCard(colour: Color(0xFF1D1E33))),
                  Expanded(child: ReUseableCard(colour: Color(0xFF1D1E33))),
                ],
              ),
            ),

          ),
          Expanded(child: ReUseableCard(colour: Color(0xFF1D1E33)),),
          Expanded(
            child: Expanded(
              child: Row(
                children: [
                  Expanded(child: ReUseableCard(colour: Color(0xFF1D1E33))),
                  Expanded(child: ReUseableCard(colour: Color(0xFF1D1E33))),
                ],
              ),
            ),

          ),

        ],
      ),

    );
  }
}

class ReUseableCard extends StatelessWidget {
  ReUseableCard({required this.colour});
  late Color colour;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}

