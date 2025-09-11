import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final Color textcolor;
  final Color bgcolor;
  final Color? bordercolor;
  const Custombutton({super.key, required this.text, required this.onpressed, required this.bgcolor, required this.textcolor,  this.bordercolor, });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337,
      height: 49,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(color: Appcolors.whitecolor),
          backgroundColor: bgcolor,
          side: BorderSide(color:bordercolor ?? Appcolors.whitecolor)
        ),
      onPressed: onpressed,
      child: Text(text,
      style: TextStyle(color: textcolor),),),
    );
  }
}