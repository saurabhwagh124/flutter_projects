import 'dart:async';

import 'package:clothes_on_project/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State{

  @override 
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), navigateLoginScreen);
  }

  void navigateLoginScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(end: Alignment.topCenter,begin: Alignment.bottomCenter,colors:[Colors.teal, Color.fromARGB(255, 75, 126, 215)])
        ),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[100]
                  ),
                  child: Image.asset("assets/splash_clothes-removebg-preview.png"),
                ),
              ),
              const SizedBox(height: 20,),
              Text("Clothes4U", style: GoogleFonts.metamorphous(fontSize:40, fontWeight: FontWeight.w900, letterSpacing:2, color: Colors.white),)
            ],
          ),
        ),
      )
    );
  }
}