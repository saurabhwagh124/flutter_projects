import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_01/page02.dart';

class Page03 extends StatefulWidget{
  const Page03({super.key});

  @override
  State createState(){
    return _Page03_State();
  }
}

class _Page03_State extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 66, left: 2),
            child: IconButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return const Page02();}));}, 
              icon: const Icon(Icons.arrow_back, size: 30,weight: 15, color: Colors.black,)
            ),
          ),
          const SizedBox(
            height: 49,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 10
            ),
            child: Text(
              "Verification",
              style: GoogleFonts.poppins(
                fontSize:20,
                fontWeight: FontWeight.w700 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 68,
              bottom: 34
            ),
            child: Text(
              "Enter the OTP code from the phone we just sent you.",
              style: GoogleFonts.poppins(
                fontSize:14,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 20,),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromRGBO(204, 211, 196, 1)),
                  boxShadow: const [BoxShadow(offset: Offset(0, 8), blurRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.06))]
                ),
                child: TextFormField(),
              ),
              const SizedBox(width: 32,),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromRGBO(204, 211, 196, 1)),
                  boxShadow: const [BoxShadow(offset: Offset(0, 8), blurRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.06))]
                ),
                child: TextFormField(),
              ),
              const SizedBox(width: 32,),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromRGBO(204, 211, 196, 1)),
                  boxShadow: const [BoxShadow(offset: Offset(0, 8), blurRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.06))]
                ),
                child: TextFormField(),
              ),
              const SizedBox(width: 32,),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color.fromRGBO(204, 211, 196, 1)),
                  boxShadow: const [BoxShadow(offset: Offset(0, 8), blurRadius: 20, color: Color.fromRGBO(0, 0, 0, 0.06))]
                ),
                child: TextFormField(),
              ),
              const SizedBox(width: 20,)
            ],
          ),
          const SizedBox(height: 34,),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Row(
              children: [
                Text("Don’t receive OTP code! ",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
                ),
                Text("Resend",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight:FontWeight.w500
                ),
                )
              ],
            ) 
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: GestureDetector(
              child: Container(
                width: 320,
                height: 50,
                decoration: const BoxDecoration(
                  gradient:LinearGradient(end: Alignment.topCenter,begin: Alignment.bottomCenter,colors: [Color.fromRGBO(62, 102, 24, 1), Color.fromRGBO(124, 180, 70, 1)]),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [BoxShadow(offset: Offset(0, 20), blurRadius: 40, spreadRadius: 0, color: Color.fromRGBO(0, 0, 0, 0.15))]
                ),
                alignment: Alignment.center,
                child: Text("Submit", style: GoogleFonts.poppins(fontSize:20, color: Colors.white, fontWeight: FontWeight.w500),),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){return Page03();}));
              },
            ),
          ),
        ],
      ),
    );
  }
}