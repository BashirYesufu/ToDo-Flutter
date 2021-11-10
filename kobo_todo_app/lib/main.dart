import 'package:flutter/material.dart';
import 'gradient_button.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 30.0,),

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
      ),
    );
  }
}


