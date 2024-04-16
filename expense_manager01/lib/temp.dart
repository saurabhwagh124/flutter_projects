import 'package:expance_manager/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class graphscreen extends StatefulWidget {
  const graphscreen({super.key});

  @override
  State<graphscreen> createState() => _graphscreenState();
}

class _graphscreenState extends State<graphscreen> {
  List imagelist = [
    "assets/images/food.png",
    "assets/images/fuel.png",
    "assets/images/medicine.png",
    "assets/images/movie.png",
    "assets/images/shopping.png",
  ];
  List headings = [
    "Food",
    "Fuel",
    "Medicine",
    "Entertainment",
    "Shopping",
  ];
  List amount = [
    "₹ 650",
    "₹ 600",
    "₹ 500","₹ 475","₹ 325",
  ];
  Map<String, double> data = {
    "Food": 19,
    "Medicine": 12,
    "Fuel": 20,
    "Entertainment": 25,
    "Shopping": 22
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Mydrawer(),
        appBar: AppBar(
          title: Text(
            "Graphs",
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 23, bottom: 25),
              child: PieChart(
                dataMap: data,
                animationDuration: const Duration(milliseconds: 2000),
                centerText: "Total\n ₹ 2550.00",
                centerTextStyle: const TextStyle(
                    backgroundColor: Colors.white, color: Colors.black),
                chartType: ChartType.ring,
                ringStrokeWidth: 30,
                chartRadius: 177,
                chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false, showChartValueBackground: false),
              ),
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: headings.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        imagelist[index],
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        headings[index],
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 15)),
                      ),
                      const Spacer(),
                      Text(
                        amount[index],
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      )
                    ],
                  ),
                );
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  Text("Total",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(fontSize: 16))),
                  const Spacer(),
                  Text("₹ 2,550",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)))
                ],
              ),
            )
          ],
        ));
  }
}