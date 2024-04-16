import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';


class RentScreen extends StatefulWidget{

  const RentScreen({super.key});

  @override
  State createState() => _RentScreenState();
}

class _RentScreenState extends State{
  
  int rentOrder = rentList.length;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        leading: const Icon(Icons.menu),
        title: Text("Clothes4U", style: GoogleFonts.metamorphous(fontSize:20, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 88, 220, 247),
        actions: const [
          Icon(Icons.notifications_none)
        ],
      ),
      body: Padding(
                padding: const EdgeInsets.all(8.0),
                child:SingleChildScrollView(
                  child: Container(
                  decoration: BoxDecoration(
                    //0%gradientList.length
                    borderRadius: BorderRadius.circular(30)
                  ),
                  padding: const EdgeInsets.all(20),
                  // margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          const Icon(Icons.shopping_cart),
                          Text("Cart", style: GoogleFonts.roboto(fontSize:30, fontWeight: FontWeight.bold),),
                          const Spacer()
                        ],
                      ),
                      const SizedBox(height: 60,),
                      Row(
                        children: [
                          const Spacer(),
                          Text(rentList[rentOrder-1].clothesName,style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w600),),
                          const Spacer(),
                          // const Icon(Icons.favorite_border_outlined, color: Colors.black,size: 30,weight: 16,)
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Image.network(rentList[rentOrder-1].clothesUrl,fit: BoxFit.cover),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("Price: ${rentList[rentOrder-1].price}/day", style: GoogleFonts.roboto(fontSize:20, fontWeight: FontWeight.w500),),
                          const Spacer(),
                          Text("Size: ${rentList[rentOrder-1].size}", style: GoogleFonts.roboto(fontSize:20, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () async{
                            await showDialog(
                              context: context, 
                              builder: (BuildContext context){
                                return SimpleDialog(
                                  title: Text("Your order has been placed", style: GoogleFonts.poppins(fontSize:20, fontWeight: FontWeight.bold),),
                                  children: [
                                    Column(
                                      children: [
                                        Text("Thankyou for ordering! ",style: GoogleFonts.poppins(fontSize:15, fontWeight: FontWeight.normal),),
                                        const SizedBox(height: 10,),
                                        ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const MyNewUI()));
                                            rentList.clear();
                                          }, 
                                          child: Text("Continue Shopping",style: GoogleFonts.poppins(fontSize:20, fontWeight: FontWeight.normal))
                                        )
                                      ],
                                    )
                                  ],
                                );
                              });
                          },
                          child: Text("Rent!", style: GoogleFonts.roboto(fontSize:25, fontWeight: FontWeight.w400))
                        ),
                      )
                    ],
                  ),
                ),
                )
              )
    );
  }  
}
