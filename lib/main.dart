import 'package:flutter/material.dart';
import 'package:spotify/ui%20pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Splashscreen(),
     
    );
  }
}

