import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/customtextfield.dart';
import 'package:spotify/ui%20pages/genderscreen/genderscreen.dart';

class Createpassword extends StatelessWidget {
   Createpassword({super.key});
  final passwordcontroller = TextEditingController();

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
                  Text("Create a password",style: TextStyle(color: Appcolors.whitecolor,fontSize: 20)),
                  Container(
                    width: 350,
                    height: 52,
                    
                    color: Appcolors.lightgreycolor,
                    child: Customtextfield(textcontroller:passwordcontroller , labelText: "enter password", radius: 5)),
                    Text("Use atleast 8 characters",style: TextStyle(color: Appcolors.whitecolor,fontSize: 10),)
                ],
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Genderscreen()));
            }, child: Text("Next"))
          ],
        ),

        
      ) ,
    );
  }
}