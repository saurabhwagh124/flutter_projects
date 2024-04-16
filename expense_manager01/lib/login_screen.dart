import 'package:expense_manager01/expense_manager_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State{

  bool signupFlag = false;
  String signInHeader = "Login to your Account ";
  String signUpHeader = "Create your Account ";
  String signUpMessage = "Already have an account? ";
  String signInMessage = "Don’t have an account? ";
  String signIn = "Sign In";
  String signUp = "Sign Up";

  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          const Padding(padding: EdgeInsets.only(top:62)),
          SizedBox(
            
            child: Image.asset("assets/expense_manager.png"),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: 
            (signupFlag)?
            Text(signUpHeader, style: GoogleFonts.poppins(
              fontSize:20,
              fontWeight: FontWeight.w500
              ),
            )
            : Text(signInHeader, style: GoogleFonts.poppins(
              fontSize:20,
              fontWeight: FontWeight.w500
              ),
            ),
          ),
          (signupFlag)? Padding(
            padding: const EdgeInsets.only(top:22,),
            child: Container(
              height: 49,
              width: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 10,
                  color: Color.fromRGBO(0, 0, 0, 0.15)
                )]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                readOnly: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Name",
                  enabled: false
                ),
              ),
            ),
          )
          : const Padding(padding: EdgeInsets.all(0)),
          Padding(
            padding: const EdgeInsets.only(top: 25,),
            child: Container(
              height: 49,
              width: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 10,
                  color: Color.fromRGBO(0, 0, 0, 0.15)
                )]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                readOnly: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Username",
                  enabled: false
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:22,),
            child: Container(
              height: 49,
              width: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 10,
                  color: Color.fromRGBO(0, 0, 0, 0.15)
                )]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                readOnly: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Password",
                  enabled: false
                ),
              ),
            ),
          ),
          (signupFlag)? Padding(
            padding: const EdgeInsets.only(top:22,),
            child: Container(
              height: 49,
              width: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 10,
                  color: Color.fromRGBO(0, 0, 0, 0.15)
                )]
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                readOnly: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Confirm Password",
                  enabled: false
                ),
              ),
            ),
          )
          : const Padding(padding: EdgeInsets.all(0)),
          Padding(
            padding: const EdgeInsets.only(top: 30,),
            child: GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ExpenseManager())),
              child: Container(
              height: 49,
              width: 280,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(14, 161, 125, 1),
              ),
            child: Center(child: 
              (signupFlag)?
                Text(signUp, style: GoogleFonts.poppins(fontSize:15, fontWeight: FontWeight.w500,color: Colors.white)) 
                : Text(signIn, style: GoogleFonts.poppins(fontSize:15, fontWeight: FontWeight.w500,color: Colors.white),),
              ),
            )
          ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (signupFlag)?
                Text(signUpMessage, style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color:const Color.fromRGBO(0,0,0,0.6)),)
                : Text(signInMessage, style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color:const Color.fromRGBO(0,0,0,0.6)),),
                GestureDetector(
                  child: 
                  (signupFlag)?
                    Text(signIn, style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14,161,125,1)),)
                    : Text(signUp, style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14,161,125,1)),),
                  onTap: () {
                    setState(() {
                      signupFlag = !signupFlag;
                      print(signupFlag);
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}