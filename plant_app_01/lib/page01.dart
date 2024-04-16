import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page02.dart';

class Page01 extends StatefulWidget{
  const Page01({super.key});

  @override
  State createState(){ return _Page01State();}
}

class _Page01State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12,),
          SizedBox(
            height: 464,
            width: double.infinity,
            child: Image.asset("assets/img01.png", fit: BoxFit.cover,),
          ),
          SizedBox(
            height: 88,
            width: 247,
            child: Expanded(
              child: Text(
                "Enjoy your life with Plants",
                style: GoogleFonts.poppins(
                  fontSize: 32.44,
                  fontWeight: FontWeight.w400
                ),
              )
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            child: Container(
              width: 320,
              height: 50,
              decoration: const BoxDecoration(
                gradient:LinearGradient(end: Alignment.topCenter,begin: Alignment.bottomCenter,colors: [Color.fromRGBO(62, 102, 24, 1), Color.fromRGBO(124, 180, 70, 1)]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(offset: Offset(0, 20), blurRadius: 40, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))]
              ),
              alignment: Alignment.center,
              child: Text("Get Started  >", style: GoogleFonts.poppins(fontSize:20, color: Colors.white, fontWeight: FontWeight.w500),),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){return Page02();}));
            },
          )
        ],
      )
    );
  }
}