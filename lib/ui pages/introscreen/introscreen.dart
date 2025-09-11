import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/custombutton.dart';
import 'package:spotify/ui%20pages/create%20account%20screen/createaccountscreen.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.blackcolor,
      body: Center(
        child: Container(
             padding: EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/Logo.png"),
              Text("Millions of Songs. \n Free on Spotify.",textAlign: TextAlign.center,style: TextStyle(color: Appcolors.whitecolor,fontWeight:FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Custombutton(text: "signup free",
               onpressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Createaccountscreen()));
               },
               bgcolor: Appcolors.greencolor,
               textcolor: Appcolors.whitecolor,
               bordercolor: Appcolors.greencolor,),
              SizedBox(
                height: 10,
              ),
              Custombutton(text: "continue with google", onpressed: (){},bgcolor:Appcolors.blackcolor,textcolor: Appcolors.whitecolor),
              SizedBox(
                height: 10,
              ),
              Custombutton(text: "continue with facebook", onpressed: (){},bgcolor:Appcolors.blackcolor,textcolor: Appcolors.whitecolor),
              SizedBox(
                height: 10,
              ),
              Custombutton(text: "continue with Apple", onpressed: (){},bgcolor: Appcolors.blackcolor,textcolor: Appcolors.whitecolor),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text("log in",
                style: TextStyle(color: Appcolors.whitecolor,fontSize: 20),),
              ),
              Align(
                alignment: Alignment.bottomCenter,
              )
            ],
          ),
        ),
      ),

    );
  }
}