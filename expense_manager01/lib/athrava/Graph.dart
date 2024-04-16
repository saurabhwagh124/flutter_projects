
import 'package:emp/drawer.dart';
import 'package:emp/list.dart';
import 'package:flutter/material.dart';

import 'package:pie_chart/pie_chart.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Graph extends StatefulWidget {
  const Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  double total = 0;
  @override
  void initState() {
    super.initState();
    totaladdition();
  }

  void totaladdition() {
    total = 0;
    for (int i = 0; i < data.length; i++) {
      total += data.values.elementAt(i);
    }
    setState(() {
      total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawericon(),
        appBar: AppBar(
          title: Text(
            " Graph",
            style: GoogleFonts.poppins(
                color: const Color.fromRGBO(33, 33, 33, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 23, right: 23, bottom: 70),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 180,
                width: double.infinity,
                child: Container(
                  alignment: Alignment.center,
                  height: 178,
                  width: 178,
                  margin: const EdgeInsets.only(right: 24),
                  child: PieChart(
                    chartType: ChartType.ring,
                    // centerText: "Total $total",
                    centerWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "₹ $total",
                          style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),

                    dataMap: data,
                    colorList: colorofgraphs,
                    chartRadius: 200,
                    ringStrokeWidth: 25,
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValuesOutside: true,
                      showChartValues: true,
                      showChartValueBackground: true,
                      showChartValuesInPercentage: true,
                    ),
                    legendOptions: const LegendOptions(
                      showLegends: true,
                      showLegendsInRow: false,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                height: 0.2,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30, bottom: 30, left: 15, right: 15),
                width: 290,
                height: 324,
                child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      final Data = data.entries.elementAt(index);
                      return Container(
                        margin: const EdgeInsets.only(
                            bottom: 30, left: 3, right: 15),
                        height: 45,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colorofgraphs[
                                      index % colorofgraphs.length]),
                              child: SvgPicture.asset(
                                  imagesofexp[index % imagesofexp.length]),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              Data.key,
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Text(
                              "${Data.value}    ",
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            SvgPicture.asset("images/ban.svg")
                          ],
                        ),
                      );
                    }),
              ),
              const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                height: 0.2,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 42, right: 42),
                width: 240,
                height: 24,
                child: Row(
                  children: [
                    Text(
                      " Total",
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      "₹ $total",
                      style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
