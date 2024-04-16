import 'package:emp/drawer.dart';
import 'package:emp/list.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawericon(),
        appBar: AppBar(
          title: Text(
            " Trash",
            style: GoogleFonts.poppins(
                color: const Color.fromRGBO(33, 33, 33, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final Deleted = data.entries.elementAt(index);
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      width: double.infinity,
                      height: 75,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                                child: Image.asset("images/delete.png"),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        Deleted.key,
                                        style: GoogleFonts.poppins(
                                            color: const Color.fromRGBO(
                                                25, 5, 5, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SizedBox(
                                      width: 255,
                                      height: 30,
                                      child: Text(
                                        " Lorem Ipsum is simply dummy text of the printing and typesetting industry... more  ",
                                        style: GoogleFonts.poppins(
                                            color: const Color.fromRGBO(
                                                25, 5, 5, 1),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "${Deleted.value}",
                                    style: GoogleFonts.poppins(
                                        color:
                                            const Color.fromRGBO(25, 5, 5, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "3 June | 11:50 AM ",
                                style: GoogleFonts.poppins(
                                    color: const Color.fromRGBO(25, 5, 5, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Divider(),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Divider()
                  ],
                );
              }),
        ),
      ),
    );
  }
}
