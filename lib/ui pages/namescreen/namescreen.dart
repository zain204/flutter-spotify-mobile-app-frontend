import 'package:flutter/material.dart';
import 'package:spotify/domain/appcolors.dart';
import 'package:spotify/domain/custom%20items/custombutton.dart';
import 'package:spotify/domain/custom%20items/customtextfield.dart';
import 'package:spotify/ui%20pages/choose%20artist%20screen/chooseartistscreen.dart';

class Namescreen extends StatelessWidget {
   Namescreen({super.key});
  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Appcolors.blackcolor,
      appBar: AppBar(
        backgroundColor: Appcolors.blackcolor,
        title:Text("create account",style: TextStyle(color: Appcolors.whitecolor),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What's your name",style: TextStyle(color: Appcolors.whitecolor,fontSize: 20)),
                  Container(
                    width: 350,
                    height: 52,
                    
                    color: Appcolors.lightgreycolor,
                    child: Customtextfield(textcontroller:namecontroller , labelText: "ente your name", radius: 5)),
                    Text("this appear on your spotify profile",style: TextStyle(color: Appcolors.whitecolor),),
                    
                ],
              ),
            ),
          ),
           Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
                color: Appcolors.whitecolor,
              ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Container(
                  constraints: BoxConstraints(maxWidth: 350),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('by tapping on "create account" you agree to the spotify term of use',style: TextStyle(color: Appcolors.whitecolor),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Term of use",style: TextStyle(color: Appcolors.greencolor),),
                      SizedBox(height: 10,),
                      Text('To learn more about how spotify collects, uses, share and protects your data, please see the spotify privacy policy',textAlign: TextAlign.start
                      ,style: TextStyle(color: Appcolors.whitecolor,fontSize: 15,),
                      ),
                      SizedBox(height: 10,),
                      Text("privacy policy",style: TextStyle(color: Appcolors.greencolor),)
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ) ,
      floatingActionButton:Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Custombutton(text: "create an account", onpressed: (){
         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Chooseartistscreen()),
         (Route<dynamic> route) => false,
         );
        }, bgcolor: Appcolors.whitecolor, textcolor: Appcolors.blackcolor),
      ),
      
    );
  }
}