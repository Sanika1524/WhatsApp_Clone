import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Widgets/uihelper.dart';
import 'package:whatsapp_clone/Screens/onBoardingScreen/onboardingscreen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assest/images/whatsapp 1.png"),
                SizedBox(height: 20,),
                UiHelper.CustomText(text: 'WhatsApp', height: 18, fontweight: FontWeight.bold)
              ],
            ),
          ),
    );
  }
}