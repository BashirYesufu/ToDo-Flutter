import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Color color1;
  final Color color2;
  final IconData icon;
  final Function()? action;
  final double size;

  const GradientButton({Key? key,
    required this.color1,
    required this.color2,
    required this.icon,
    this.action,
    this.size = 15.0, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(size),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Icon(icon, color: Colors.white,),
        onPressed: action,
      ),
    );
  }
}



