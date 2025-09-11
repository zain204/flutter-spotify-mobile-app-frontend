import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/ui%20pages/introscreen/introscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Introscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.blackcolor,
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Image.asset("assets/images/Logo.png",color:Appcolors.greencolor,)),
      ),
    );
  }
}