import 'package:clothes_on_project/premium_rent_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'databaseConnections.dart';
import 'popular_rent_page.dart';
import 'rent_screen.dart';

List  rentList = [];

class MyNewUI extends StatefulWidget {
  const MyNewUI({super.key});

  @override
  State createState() => _MyNewUIState();
}

class _MyNewUIState extends State {

  bool userLogin = false;

  List colorList = const [
      Color.fromRGBO(167, 201, 87, 1),
      Color.fromRGBO(141,153,174,1),
      Color.fromRGBO(44, 121, 112, 1),
  ];

  List premiumColorList = const[
    Color.fromRGBO(243, 128, 128, 1),
    Color.fromRGBO(196, 215, 242, 1),
    Color.fromRGBO(193, 255, 242, 1),
    Color.fromRGBO(167, 171, 221, 1)
  ];

  bool isEdit = false;

  final TextEditingController _clothesNamecontroller = TextEditingController();
  final TextEditingController _clothesUrlController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _sizeController = TextEditingController();
  final TextEditingController _speedController = TextEditingController();
  final TextEditingController _popularityController = TextEditingController();

  final GlobalKey<FormFieldState> _clothesNameKey = GlobalKey();
  final GlobalKey<FormFieldState> _clothesUrlKey = GlobalKey();
  final GlobalKey<FormFieldState> _priceKey = GlobalKey();
  final GlobalKey<FormFieldState> _sizeKey = GlobalKey();
  final GlobalKey<FormFieldState> _popularityKey = GlobalKey();

  Future showClothesData() async {
    clothesList = await getClothes();
    premClothes = await getPremiumClothes();
    popuClothes = await getPopularClothes();
  }

  void clearAll() {
    _clothesUrlController.clear();
    _clothesNamecontroller.clear();
    _priceController.clear();
    _sizeController.clear();
    _popularityController.clear();
    _speedController.clear();
  }

  void submit(ClothesModelClass obj) async {
    await insertNewClothes(obj);
   await showClothesData();
    clearAll();
    setState(() {});
    Navigator.of(context).pop();
  }

  void showBottomSheet1() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 10,
              right: 10,
              top: 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Add Clothes to rent",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Clothes Name",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _clothesNameKey,
                        controller: _clothesNamecontroller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter clothesName";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: Colors.purpleAccent))),
                      ),
                      Text(
                        "Enter Clothes Url",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _clothesUrlKey,
                        controller: _clothesUrlController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Clothes image url";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                      ),
                      Text(
                        "price",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _priceKey,
                        controller: _priceController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter price";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                      ),
                      Text(
                        "size",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _sizeKey,
                        controller: _sizeController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter size";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                      ),
                      Text(
                        "Category",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _popularityKey,
                        controller: _popularityController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Category";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        bool nameFlag = _clothesNameKey.currentState!.validate();
                        bool urlFlag = _clothesUrlKey.currentState!.validate();
                        bool priceFlag = _priceKey.currentState!.validate();
                        bool sizeFlag = _sizeKey.currentState!.validate();
                        bool popularFLag =
                            _popularityKey.currentState!.validate();
                        if (nameFlag &&
                            urlFlag &&
                            priceFlag &&
                            sizeFlag &&
                            popularFLag) {
                          submit(ClothesModelClass(
                              clothesName: _clothesNamecontroller.text.trim(),
                              clothesUrl: _clothesUrlController.text,
                              price: double.parse(_priceController.text),
                              size: _sizeController.text,
                              popular: _popularityController.text));
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(18, 244, 86, 1))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 88, 220, 247),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text("Clothes4U", style: GoogleFonts.metamorphous(fontSize:20, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 88, 220, 247),
        actions: const [
          Icon(Icons.notifications_none)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Enter Clothes you want"),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      focusColor: Colors.white),
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: FractionalOffset.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "People will stare",
                        style: GoogleFonts.jost(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Make it worth their while!",
                        style: GoogleFonts.jost(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Premium Clothes",
                          style: GoogleFonts.jost(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(onPressed: (){
                          setState(() {});
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PremiumRentPage()));
                        }, child: const Text("See More"))
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: ListView.separated(
                          itemCount: premClothes.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 20,
                            );
                          },
                          itemBuilder: (context, index) {
                            return Container(
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: premiumColorList[index % premiumColorList.length]),
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(premClothes[index].clothesName, style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),),
                                      const Spacer(),
                                      const Icon(Icons.favorite_border_outlined)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("${premClothes[index].price}/day", style: GoogleFonts.jost(fontSize: 18, fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.network(
                                      premClothes[index].clothesUrl,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          const Text("size"),
                                          Text(premClothes[index].size, style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w500))
                                        ],
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => RentScreen()));
                                            rentList.add(premClothes[index]);
                                            setState(() {});
                                          },
                                          child: const Text("Rent!"))
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Clothes",
                          style: GoogleFonts.jost(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PopularRentPage()));
                        }, child: const Text("See More"))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: colorList[index % colorList.length]),
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(popuClothes[index].clothesName, style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500)),
                                      const Spacer(),
                                      const Icon(Icons.favorite_border_outlined)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text("${popuClothes[index].price}/day", style: GoogleFonts.jost(fontSize: 18, fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.network(
                                      popuClothes[index].clothesUrl,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          const Text("size"),
                                          Text("${popuClothes[index].size} ", style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w500))
                                        ],
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            rentList.add(popuClothes[index]);
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const RentScreen()));
                                          },
                                          child: const Text("Rent!"))
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 10,
                            );
                          },
                          itemCount: popuClothes.length),
                    )
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet1();
        },
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}
