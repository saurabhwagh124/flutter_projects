import 'package:emp/Graph.dart';
import 'package:emp/Trash.dart';
import 'package:emp/categories.dart';
import 'package:emp/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawericon extends StatefulWidget {
  const Drawericon({super.key});

  @override
  State<Drawericon> createState() => _DrawericonState();
}

class _DrawericonState extends State<Drawericon> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        //   mainAxisAlignment: MainAxisAlignment.start,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "  Expense Manager ",
                style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.only(bottom: 13),
              child: Text(
                "  Saves all your Transactions ",
                style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                height: 62,
                width: 255,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(14, 161, 125, 0.15),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  children: [
                    SvgPicture.asset("images/transaction icon dra.svg"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Transaction()));
                      },
                      child: Text(
                        "  Transaction ",
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 5,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Graph()),
                );
              },
              child: GestureDetector(
                child: Container(
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  height: 62,
                  width: 255,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(14, 161, 125, 0.15),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                    children: [
                      SvgPicture.asset("images/graph.svg"),
                      Text(
                        "  Graphs ",
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              height: 5,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Categories()),
                );
              },
              child: Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                height: 62,
                width: 255,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(14, 161, 125, 0.15),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  children: [
                    SvgPicture.asset("images/category.svg"),
                    Text(
                      "  Category  ",
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 5,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                height: 62,
                width: 255,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(14, 161, 125, 0.15),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  children: [
                    SvgPicture.asset("images/trash.svg"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Trash()),
                        );
                      },
                      child: Text(
                        "  Trash  ",
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(14, 161, 125, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 5,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                // alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                height: 62,
                width: 255,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(14, 161, 125, 0.15),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  children: [
                    SvgPicture.asset("images/about us.svg"),
                    Text(
                      "  About us ",
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 5,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ],
        ),
      ),
    );
  }
}
