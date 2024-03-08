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
      home: MyNewUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyNewUI extends StatefulWidget{
  const MyNewUI({super.key});

  @override
  State createState() => _MyNewUIState();
}

class _MyNewUIState extends State{

  @override
  Widget build(BuildContext context){
    return   Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 47, 20, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 47,
                ),
                const Row(
                  children: [
                    Icon(Icons.menu,size: 30,),
                    Spacer(),
                    Icon(Icons.notifications_none,size: 30,),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: FractionalOffset.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to New",
                        style: GoogleFonts.jost(
                          fontSize:26.98,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      Text(
                        "Educourse",
                        style: GoogleFonts.jost(
                          fontSize: 37,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                   TextFormField(
                    decoration: const InputDecoration(
                      
                      label: Text("Enter your Keyword"),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(Icons.search,color: Colors.black,size: 35,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                      focusColor: Colors.white
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 29,),
          Expanded(
            child:Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(38),
                topRight: Radius.circular(38)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 38, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Course For You",
                    style: GoogleFonts.jost(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    const SizedBox(height: 16,),
                    Container(
                      height: 242,
                      width: double.infinity,
                      child: (
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 242,
                              width: 192,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(197, 4, 98, 1),
                                  Color.fromRGBO(80, 3, 112, 1)
                                ]),
                                borderRadius: BorderRadius.all(Radius.circular(14))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(22, 20, 18, 0),
                                    height: 50,
                                    width: 150,
                                      child: Text(
                                        "UX Designer from Scratch.",
                                        style: GoogleFonts.jost(fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                        ),
                                      )
                                  ),
                                  Image.asset("assets/img_01.png")
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              height: 242,
                              width: 192,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(0, 77, 228, 1),
                                  Color.fromRGBO(1, 47, 135, 1)
                                ]),
                                borderRadius: BorderRadius.all(Radius.circular(14))
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(22, 20, 18, 0),
                                    height: 50,
                                    width: 150,
                                    // child: Expanded(
                                      child: Text(
                                        "Design Thinking The Beginner",
                                        style: GoogleFonts.jost(fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                        ),
                                      )
                                    // ),
                                  ),
                                  Image.asset("assets/img_02.png")
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,)
                          ],
                        )
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Text("Course By Category",
                    style: GoogleFonts.jost(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(25, 0, 56, 1),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            
                            child: Image.asset("assets/pc1.png"),
                          ),
                          const SizedBox(height: 9,),
                          Text("UI/UX",
                          style: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          )
                        ],
                      ),
                      
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(25, 0, 56, 1),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            
                            child: Image.asset("assets/icon2.png"),
                          ),
                          const SizedBox(height: 9,),
                          Text("Visual",
                          style: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          )
                        ],
                      ),
                      
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(25, 0, 56, 1),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            
                            child: Image.asset("assets/icon3.png"),
                          ),
                          const SizedBox(height: 9,),
                          Text("Illustration",
                          style: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          )
                        ],
                      ),
                      
                      Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(25, 0, 56, 1),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            
                            child: Image.asset("assets/icon4.png"),
                          ),
                          const SizedBox(height: 9,),
                          Text("Photo",
                          style: GoogleFonts.jost(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          )
                        ],
                      )
                    ],
                    )
                  ],
                ),
              ),
            ) 
          ),
        ],
      ),
    );
  }
}