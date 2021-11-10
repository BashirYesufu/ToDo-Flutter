import 'package:flutter/material.dart';
import 'gradient_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GradientButton(
              color1: Color(0xff6C37CB),
              color2: Color(0xffE716A3),
              icon: Icons.check,
            ),

            GradientButton(
              color1: Color(0xff0D7AEA),
              color2: Color(0xff00D5F9),
              icon: Icons.add,
            ),

          ],
        ),
      ),
    );
  }
}
