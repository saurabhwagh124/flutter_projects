import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'draw_drawer.dart';
import 'lists.dart';

class ExpenseManager extends StatefulWidget{
  const ExpenseManager({super.key});

  @override
  State createState() => _ExpenseManagerState();
}

class _ExpenseManagerState extends State{

  void showBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      isDismissible: true,
      context: context, 
      builder: (context) {
        return Padding(
          padding:  EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10,),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                          
                        ),
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    "Amount",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide: const BorderSide(
                       ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text(
                    "Category",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onTap: (){},
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              
              const SizedBox(height: 20,),
              Container(
                height: 40,
                width: 123,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(67),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Add",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30  ,
              )
            ],
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("June 2024", style: GoogleFonts.poppins(fontSize:20, fontWeight: FontWeight.w500),),
        actions: [
          IconButton(onPressed: (){}
          , icon: const Icon(Icons.search_outlined,size: 25,)
        )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.separated(
            itemCount: svgPath.length,
            itemBuilder: (BuildContext context, int index ){
              final mapElement = data.entries.elementAt(index);
              return SizedBox(
                child: Row(
                  children: [
                    Container(
                      height: 41,
                      width: 41,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: colorsList[index],
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset(svgPath[index]),
                    ),
                    const SizedBox(width: 17,),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(mapElement.key, style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),),
                              const Spacer(),
                              const Icon(Icons.remove_circle, color: Color.fromRGBO(246, 113, 49, 1),),
                              const SizedBox(width: 10,),
                              Text("${mapElement.value}", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Lorem Ipsum is simply dummy text of the ", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text("3 June | 11:50 AM", style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, color: const Color.fromRGBO(0, 0, 0, 0.6)),),
                              const SizedBox(height: 5,)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
          }, separatorBuilder: (BuildContext context, int index) { 
            return const Divider(height: 0.5, color: Color.fromRGBO(206, 206, 206, 1),);
           },), 
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          setState(() {
            showBottomSheet();
          });
        },
        backgroundColor: Colors.white,
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(14, 161, 125, 1),
              ),
              child: const Icon(Icons.add_outlined, color: Colors.white,),
            ),
            const SizedBox(width: 5,),
            const Text("Add Transaction")
          ],
        ),
      ),
    );
  }
}