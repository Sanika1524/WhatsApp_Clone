import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Login/login.dart';
import 'package:whatsapp_clone/Screens/Widgets/uihelper.dart';

class onBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assest/images/boarding.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Welcome to WhatsApp",
                height: 20,
                color: Color(0XFF000000)),
            SizedBox(height: 20,),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomText(text: "Read out", height: 14),
                    UiHelper.CustomText(text: " Privacy Policy. ", height: 14, color: Color(0XFF0C42CC)),
                    UiHelper.CustomText(text: "Tap “Agree and continue”  ", height: 14)
                  ],
                ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: " to accept the", height: 14),
                UiHelper.CustomText(text: "  Teams of Service. ", height: 14, color: Color(0XFF0C42CC)),
              ],
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButtom(
          callback: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
