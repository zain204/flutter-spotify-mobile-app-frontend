import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final TextEditingController textcontroller;
  final String labelText;
  final double radius;
  const Customtextfield({super.key, required this.textcontroller, required this.labelText, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      child: TextField(
        controller: textcontroller ,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius)
          )
        ),
      ),
    );
  }
}