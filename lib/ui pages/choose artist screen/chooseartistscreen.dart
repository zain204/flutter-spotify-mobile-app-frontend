import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/customtextfield.dart';
import 'package:spotify/ui%20pages/choose%20artist%20screen/artistimg.dart';

class Chooseartistscreen extends StatelessWidget {

   Chooseartistscreen({super.key});
  final artistsearchcontroller = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
     List artist = [{
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  },
  {
    "img":"assets/images/image 2.png",
     "name": "selena"
  }
  ];
    return Scaffold(
      backgroundColor: Appcolors.blackcolor,
      appBar: AppBar(
        backgroundColor: Appcolors.blackcolor,
        title: Text("choose 3 or more artist you like",style: TextStyle(color: Appcolors.whitecolor,fontSize: 16),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            
            width: double.infinity,
            child: Customtextfield(textcontroller: artistsearchcontroller, labelText: "search artist", radius: 5)),
            SizedBox(height: 20,),
            Expanded(
              child: Stack(
                children: [
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,),
                    itemCount: artist.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Artistimg(imagepath: artist[index]["img"],),
                        Text(artist[index]["name"],style: TextStyle(color: Appcolors.whitecolor),),
                     
                      ],
                    );
                  }),
                ],
              ),
            )
        ],
      ),
        
    );
  }
}