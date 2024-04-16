import 'package:emp/drawer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final TextEditingController date = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController amount = TextEditingController();
  final TextEditingController category = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawericon(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.only(
                    left: 22,
                    top: 40,
                    right: 22,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  height: 445,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          " Date ",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(37, 37, 37, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 6),
                        Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 42,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(191, 189, 189, 1)),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: date,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              onTap: () async {
                                DateTime? dateinfo = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2024),
                                  lastDate: DateTime(2025),
                                  initialDate: DateTime.now(),
                                );
                                String? Date =
                                    DateFormat.yMMMd().format(dateinfo!);
                                setState(() {
                                  date.text = Date;
                                });
                              },
                            )),
                        const SizedBox(
                          height: 19,
                        ),
                        Text(
                          " Amount ",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(37, 37, 37, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 6),
                        Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 42,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(191, 189, 189, 1)),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: amount,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            )),
                        const SizedBox(
                          height: 19,
                        ),
                        Text(
                          " Category ",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(37, 37, 37, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 6),
                        Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 42,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(191, 189, 189, 1)),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: category,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            )),
                        const SizedBox(
                          height: 19,
                        ),
                        Text(
                          "Description ",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(37, 37, 37, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 6),
                        Container(
                            padding: const EdgeInsets.only(left: 3),
                            height: 42,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(191, 189, 189, 1)),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: description,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Transaction()),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 120),
                            alignment: Alignment.center,
                            width: 123,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(67),
                                color: const Color.fromRGBO(14, 161, 125, 1)),
                            child: Text(
                              "Add ",
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            width: 170,
            height: 53,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(67),
                color: const Color.fromRGBO(255, 255, 255, 1),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Color.fromRGBO(0, 0, 0, 0.25))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(14, 161, 125, 1)),
                  child: SvgPicture.asset("images/positiveicon.svg"),
                ),
                Text(
                  "Add Transaction ",
                  style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(37, 37, 37, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.menu),
          // ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
          ],
          title: Text(
            "June 2022",
            style: GoogleFonts.poppins(
                color: const Color.fromRGBO(33, 33, 33, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        width: double.infinity,
                        height: 72,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(0, 174, 91, 0.7)),
                                  child:
                                      SvgPicture.asset("images/Vector (1).svg"),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Medicine ",
                                            style: GoogleFonts.poppins(
                                                color: const Color.fromRGBO(
                                                    25, 5, 5, 1),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            width: 160,
                                          ),
                                          SvgPicture.asset(
                                              "images/Subtract.svg"),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            "500 ",
                                            style: GoogleFonts.poppins(
                                                color: const Color.fromRGBO(
                                                    25, 5, 5, 1),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Lorem Ipsum is simply dummy text of the  ",
                                        style: GoogleFonts.poppins(
                                            color: const Color.fromRGBO(
                                                25, 5, 5, 1),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
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
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
