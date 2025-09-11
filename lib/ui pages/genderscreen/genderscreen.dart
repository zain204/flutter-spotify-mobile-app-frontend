import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/customtextfield.dart';
import 'package:spotify/ui%20pages/namescreen/namescreen.dart';

class Genderscreen extends StatelessWidget {
   Genderscreen({super.key});
  final gendercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Appcolors.blackcolor,
      appBar: AppBar(
        backgroundColor: Appcolors.blackcolor,
        title:Text("create account",style: TextStyle(color: Appcolors.whitecolor),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select your Gender",style: TextStyle(color: Appcolors.whitecolor,fontSize: 20)),
                  Container(
                    width: 350,
                    height: 52,
                    
                    color: Appcolors.lightgreycolor,
                    child: Customtextfield(textcontroller:gendercontroller , labelText: "enter email", radius: 5))
                ],
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Namescreen()));
            }, child: Text("Next"))
          ],
        ),

        
      ) ,
    );
  }
}