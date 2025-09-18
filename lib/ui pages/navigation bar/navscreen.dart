import 'package:flutter/material.dart';
import 'package:spotify/ui%20pages/navigation%20bar/homebottomnavpage.dart';
import 'package:spotify/ui%20pages/navigation%20bar/librarynavpage.dart';
import 'package:spotify/ui%20pages/navigation%20bar/searchnavpage.dart';

class Navscreen extends StatefulWidget {
  const Navscreen({super.key});

  @override
  State<Navscreen> createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  int selectedbottomindex = 0;
  List<Widget> mnavbaritems = [
    Homebottomnavpage(),
    Searchnavpage(),
    Librarynavpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mnavbaritems[selectedbottomindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedbottomindex,
        onTap: (value) {
          setState(() {
            selectedbottomindex = value;
          });
          
        },
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal
        ),
        selectedIconTheme: IconThemeData(
          size: 28
        ),
        unselectedIconTheme: IconThemeData(
          size: 24
        ),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "library")
        
      ]),
    );
  }
}