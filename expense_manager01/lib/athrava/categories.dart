import 'package:emp/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final TextEditingController imageurl = TextEditingController();
  final TextEditingController categories = TextEditingController();

  Future<dynamic> showMyDialog() async {
    return await showDialog(
      context: context,
//barrierColor: Colors.black54,
//barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Delete Confirmation"),
          content: const Text(
              "Are you sure you want to delete the selected category?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 37,
                          left: 22,
                          right: 22,
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 110,
                                width: 110,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 4,
                                          color: Color.fromRGBO(0, 0, 0, 0.25))
                                    ],
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                                child: SvgPicture.asset(
                                  "images/trash.svg",
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text("Add Image Url",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                    )),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 3),
                                  height: 42,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              191, 189, 189, 1)),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: imageurl,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  )),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text("Add Catarery",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                    )),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                  padding: const EdgeInsets.only(left: 3),
                                  height: 42,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              191, 189, 189, 1)),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: categories,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  )),
                              const SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showAboutDialog(context: context);
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 120),
                                  alignment: Alignment.center,
                                  width: 123,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(67),
                                      color: const Color.fromRGBO(
                                          14, 161, 125, 1)),
                                  child: Text(
                                    "Add ",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
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
                  "Add Category",
                  style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(37, 37, 37, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        drawer: const Drawericon(),
        appBar: AppBar(
          title: Text(
            "Categories",
            style: GoogleFonts.poppins(
                color: const Color.fromRGBO(33, 33, 33, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 40, left: 23, right: 23),
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 8,
                              color: Color.fromRGBO(0, 0, 0, 0.151),
                              offset: Offset(1, 2))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await showMyDialog();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(214, 3, 3, 0.7)
                                ),
                            child: SvgPicture.asset("images/hotel.svg"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Food",
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(33, 33, 33, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}
