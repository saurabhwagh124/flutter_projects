import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: New_Ui_2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class New_Ui_2 extends StatefulWidget{

  const New_Ui_2({super.key});

  @override
  State createState() => _New_ui_2_State();
}

class _New_ui_2_State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(80, 3, 112, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: Alignment.center,
            colors: [Color.fromRGBO(197, 4, 98, 1), Color.fromRGBO(80, 3, 112, 1)])
        ),
        child: Column(
          children:[ 
            Padding(
            padding: const EdgeInsets.fromLTRB(20, 47, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 47,),
                  const Icon(Icons.arrow_back, size: 26,color: Colors.white,),
                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 16, 44, 0),
                      child: Column(
                        children: [
                          Text(
                            "UX Designer from Scratch.",
                            style: GoogleFonts.jost(
                              fontSize: 32.61,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Text(
                            "Basic guideline & tips & tricks for how to become a UX designer easily.",
                            style: GoogleFonts.jost(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),
                          )
                        ],
                      )
                  ),
                  Row(
                    children: [
                      Container(
                        height: 34,
                        width: 136,
                        margin: const EdgeInsets.fromLTRB(19, 27, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              height: 34,
                              width: 34,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromRGBO(0, 82, 178, 1),
                                border: Border.all(color: Colors.white,
                                width: 1
                                )
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("assets/img01.png"),
                            ),
                            const Spacer(),
                            Text(
                              "Author: Jenny",
                              style: GoogleFonts.jost(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(37, 31, 0, 0),
                        height: 24,
                        width: 154,
                        child: Text(
                          "4.8⭐ (20 review)",
                          style: GoogleFonts.jost(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  )
                ],
            ),
          ),
          const SizedBox(height: 32,),
          Container(
            height: 487,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(38),
                topRight: Radius.circular(38) 
              )
            ),
            // child: Container(
              child:
                ListView.builder(
                  itemCount: 5,
                  itemBuilder:(BuildContext context, int index){
                    return Container(
                      height: 70,
                      width: 300,
                      margin: const EdgeInsets.only(left: 30,right: 30,top: 30),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [BoxShadow(
                          blurRadius: 40,
                          offset: Offset(0, 8),
                          color: Color.fromRGBO(0, 0, 0, 0.15)
                        )]
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 46,
                                margin: const EdgeInsets.only(left: 5,top: 5, bottom: 5),
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(230, 239, 239, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(12))
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 18),
                                child: Image.asset("assets/img03.png"),
                              )
                            ],
                          ),
                          const SizedBox(width: 11,),
                          Container(
                            padding: const EdgeInsets.fromLTRB(11, 12, 45, 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Introduction",
                                  style: GoogleFonts.jost(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "Lorem Ipsum is simply dummy text ... ",
                                  style: GoogleFonts.jost(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(143, 143, 143, 1)
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  } 
                )
            // )
          )
        ]
        ),
      ),
    );
  }

}