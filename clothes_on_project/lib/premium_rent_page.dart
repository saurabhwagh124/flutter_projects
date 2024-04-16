import 'package:clothes_on_project/databaseConnections.dart';
import 'package:clothes_on_project/home_page.dart';
import 'package:clothes_on_project/rent_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumRentPage extends StatefulWidget{
  const PremiumRentPage({super.key});

  @override
  State createState() => _PremiumRentPageState();
}

class _PremiumRentPageState extends State{

  List<LinearGradient> gradientList = const [
    LinearGradient(colors: [Color(0xFF007bff),Color(0xFF07479e),],begin: Alignment.topLeft,end: Alignment.bottomRight,),
    LinearGradient(colors: [Color(0xFF38ef7d),Color(0xFF00b7ff)],begin: Alignment.topLeft,end: Alignment.bottomRight),
    LinearGradient(colors: [Color(0xFFffd700),Color(0xFF00b7ff)],begin: Alignment.topLeft,end: Alignment.bottomRight),
    LinearGradient(colors: [Color(0xFF000000),Color(0xFF007bff),Color(0xFF38ef7d),],begin: Alignment.bottomCenter,end: Alignment.topCenter,stops: [0.7, 0.85, 1.0],),
    LinearGradient(colors: [Color(0xFFFFA53E),Color(0xFF007bff)],begin: Alignment.topLeft,end: Alignment.bottomRight),  
  ];
  final TextEditingController _clothesNamecontroller = TextEditingController();
  final TextEditingController _clothesUrlController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _sizeController = TextEditingController();
  final TextEditingController _speedController = TextEditingController();
  final TextEditingController _popularityController = TextEditingController(text: "premium");

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
                        readOnly: true,
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
      body: SizedBox(
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: gradientList[2],
                    //index%gradientList.length
                    borderRadius: BorderRadius.circular(30)
                  ),
                  padding: const EdgeInsets.all(20),
                  // margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          Text(premClothes[index].clothesName,style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w600),),
                          const Spacer(),
                          const Icon(Icons.favorite_border_outlined, color: Colors.black,size: 30,weight: 16,)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Image.network(premClothes[index].clothesUrl,fit: BoxFit.cover),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("Price: ${premClothes[index].price}/day", style: GoogleFonts.roboto(fontSize:20, fontWeight: FontWeight.w500),),
                          const Spacer(),
                          Text("Size: ${premClothes[index].size}", style: GoogleFonts.roboto(fontSize:20, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            rentList.add(premClothes[index]);
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const RentScreen()));
                          },
                          child: Text("Rent!", style: GoogleFonts.roboto(fontSize:25, fontWeight: FontWeight.w400))
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index){
              return const SizedBox(height: 10,);
            }, 
            itemCount: premClothes.length
          ),
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