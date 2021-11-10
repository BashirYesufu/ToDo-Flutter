import 'package:flutter/material.dart';
import 'gradient_button.dart';
import 'todo_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            GradientButton(
              color1: Color(0xff6C37CB),
              color2: Color(0xffE716A3),
              action: () {},
              icon: Icons.check,
            ),

            ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.calendar_today_outlined, color: Colors.orange[800], size: 30,),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20.0),
                    primary: Colors.white
                )
            ),

            GradientButton(
              color1: Color(0xff0D7AEA),
              color2: Color(0xff00D5F9),
              action: () {},
              icon: Icons.add,
            ),

          ],
        ),
      ],



      body: SingleChildScrollView(
        child: Column(

              children: [
                SizedBox(height: 100.0,),
               TodoCard(),
                TodoCard(),
                TodoCard(),
                TodoCard(),

              ],
            ),
      ),
      );
  }
}
