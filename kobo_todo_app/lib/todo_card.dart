import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gradient_button.dart';

class TodoCard extends StatelessWidget {

  final String nameText;
  final String dateText;
  final String timeText;
  const TodoCard({Key? key,
    required this.nameText,
    required this.dateText,
    required this.timeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 70.0,
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 15.0),
      decoration: BoxDecoration(
        color: Color(0xffFEFEFE),
        borderRadius: BorderRadius.circular(10.0),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GradientButton(
              color1: Color(0xffE716A3),
              color2: Color(0xff6C37CB),
              size: 10.0,
              icon: Icons.sports_basketball,
            ),

            Expanded(child: Text(nameText)),

            SizedBox(width: 20.0,),

            Column(
              children: [
                Text(dateText, style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5.0,),
                Text(timeText),
              ],
            ),
          ],
        ),
    );
  }
}
