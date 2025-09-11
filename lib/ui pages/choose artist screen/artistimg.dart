import 'package:flutter/material.dart';

class Artistimg extends StatelessWidget {
  final String imagepath;
  const Artistimg({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagepath))
      ),
      
    );
  }
}