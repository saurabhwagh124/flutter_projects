import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawDrawer extends StatefulWidget{
  const DrawDrawer({super.key});
  @override
  State createState() => _DrawDrawerState();
}

class _DrawDrawerState extends State{

  @override
  Widget build(BuildContext context){
    return Drawer(
      width: 216,
      child: Padding(
        padding: const EdgeInsets.only(top:32, right: 32),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text("Expense Manager", style: GoogleFonts.poppins(fontSize:16, fontWeight:FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text("Saves all your Transactions",  style: GoogleFonts.poppins(fontSize:10, fontWeight:FontWeight.w400)),
            ),
            const SizedBox(height: 11,),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("assets/Transaction.svg"),
                    Text("Transaction", style: GoogleFonts.poppins(fontSize:16, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14, 161, 125, 1)),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11,),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("assets/Transaction.svg"),
                    Text("Transaction", style: GoogleFonts.poppins(fontSize:16, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14, 161, 125, 1)),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11,),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("assets/Transaction.svg"),
                    Text("Transaction", style: GoogleFonts.poppins(fontSize:16, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14, 161, 125, 1)),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11,),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("assets/Transaction.svg"),
                    Text("Transaction", style: GoogleFonts.poppins(fontSize:16, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14, 161, 125, 1)),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11,),
            GestureDetector(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(14, 161, 125, 0.15),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("assets/Transaction.svg"),
                    Text("Transaction", style: GoogleFonts.poppins(fontSize:16, fontWeight: FontWeight.w400, color:const Color.fromRGBO(14, 161, 125, 1)),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}