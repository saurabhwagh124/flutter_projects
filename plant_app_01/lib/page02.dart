import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page03.dart';

class Page02 extends StatefulWidget{
  const Page02({super.key});

  @override
  State createState(){
    return _Page02State();
  }
}

class _Page02State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 107,),
          Center(
            child: Text(
              "Log in", 
              style: GoogleFonts.poppins(
                fontSize:30, 
                fontWeight: FontWeight.w600
              ),
            )
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 50,
            width: 320,
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.call_outlined, color: Color.fromRGBO(204, 211, 196, 1),),
                hintText: "Mobile Number",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                ),
                enabled: true
              ),
            ),
          ),
          const SizedBox(height: 30,),
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
              child: Text("Log in", style: GoogleFonts.poppins(fontSize:20, color: Colors.white, fontWeight: FontWeight.w500),),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){return Page03();}));
            },
          ),
          const SizedBox(height: 53,),
          SizedBox(child: Image.asset("assets/img02.png", fit: BoxFit.cover,))
        ],
      ),
    );
  }
}