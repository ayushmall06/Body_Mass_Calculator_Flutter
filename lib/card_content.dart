import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {

  CardContent({required this.icon,required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80,),
        SizedBox(
          height: 15,
        ),
        Text(text, style: TextStyle(
          fontSize: 18,
          color: Color(0xFF8D8E98),
        ),
        ),
      ],
    );
  }
}
