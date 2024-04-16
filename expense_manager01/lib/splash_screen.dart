import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State createState(){
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Container(
                height: 144,
                width: 144,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(234, 238, 235, 1)
                ),
                child: Image.asset("assets/expense_manager.png"),
                ),
              ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 100),
              child: Text("Expense Manager", style: GoogleFonts.poppins(
                fontSize:16,
                fontWeight:FontWeight.w600
                ),
              ),
            )
          ],
        ),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen())),
      ),
    );
  }
}