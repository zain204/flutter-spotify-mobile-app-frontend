import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/customtextfield.dart';
import 'package:spotify/ui%20pages/create%20password%20screen/createpassword.dart';

class Createaccountscreen extends StatelessWidget {
   Createaccountscreen({super.key});
  final emailcontroller = TextEditingController();

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
                  Text("What's your email?",style: TextStyle(color: Appcolors.whitecolor,fontSize: 20)),
                  Container(
                    width: 350,
                    height: 52,
                    
                    color: Appcolors.lightgreycolor,
                    child: Customtextfield(textcontroller:emailcontroller , labelText: "enter email", radius: 5)),
                    Text("you will need to confirm that email later",style: TextStyle(color: Appcolors.whitecolor,fontSize: 10),)
                ],
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Createpassword()));
            }, child: Text("Next"))
          ],
        ),

        
      ) ,
    );
  }
}