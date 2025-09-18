import 'package:flutter/material.dart';

class Artistimg extends StatelessWidget {
  final String imagepath;
  final bool isselected;
  const Artistimg({super.key, required this.imagepath,  this.isselected=false});
  

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 100,
    height: 100,
           
    decoration: BoxDecoration(
      border: Border.all(
        color: isselected ? Colors.white : Colors.transparent,
        width: isselected ? 2 : 0
      ),
      shape: BoxShape.circle,
      
      image: DecorationImage(
        image: AssetImage(imagepath),
        fit: BoxFit.cover
        )
        
    ),
     child: isselected ? Center(
      
      child: CircleAvatar(
        backgroundColor: Colors.black.withOpacity(0.3),
        radius: 14,
        child: Icon(Icons.done,color: Colors.black),
      ),
    ) : Container()
    
          );
  }
}