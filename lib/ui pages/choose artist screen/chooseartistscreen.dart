import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/customtextfield.dart';
import 'package:spotify/ui%20pages/choose%20artist%20screen/artistimg.dart';
import 'package:spotify/ui%20pages/choose%20podcast%20screen/choosepodcastscreen.dart';

class Chooseartistscreen extends StatefulWidget {

   Chooseartistscreen({super.key});

  @override
  State<Chooseartistscreen> createState() => _ChooseartistscreenState();
}

class _ChooseartistscreenState extends State<Chooseartistscreen> {
  final artistsearchcontroller = TextEditingController();
   List<int> selectedartist = [];

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
                    return InkWell(
                      onTap: (){
                        if (!selectedartist.contains(index)) {
                          selectedartist.add(index);
                          setState(() {
                            
                          });
                        }
                        else{
                          selectedartist.remove(index);
                          setState(() {
                            
                          });
                        }
                        
                      },
                      child: Column(
                        children: [
                          Artistimg(imagepath: artist[index]["img"], isselected: selectedartist.contains(index),),
                          Text(artist[index]["name"],style: TextStyle(color: Appcolors.whitecolor),),
                         
                       
                        ],
                      ),
                    );
                  }),
                        if (selectedartist.length >= 3)
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Choosepodcastscreen()));
              },
              child: Text("Next"),
            ),
          ),
        ),

                ],
              ),
            )
        ],
      ),
      
        
    );
  }
}