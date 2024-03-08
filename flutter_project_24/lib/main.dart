import 'package:flutter/material.dart';

void main() {
  runApp(const TextfieldPortfolio());
}

class TextfieldPortfolio extends StatefulWidget {
  const TextfieldPortfolio({super.key});

  @override
  State createState() => TextfieldportfolioState();
}

class TextfieldportfolioState extends State {
  final TextEditingController nameText = TextEditingController();
  final TextEditingController companyText = TextEditingController();
  final TextEditingController locationText = TextEditingController();

  final FocusNode nameFocus = FocusNode();
  final FocusNode companyFocus = FocusNode();
  final FocusNode locationFocus = FocusNode();

  String name = " ";
  String location = " ";
  String company = " ";
  bool img = false;
  Map myMap = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Textfild Portfolio"),
            centerTitle: true,
          ),
          body: ListView(
            children: [Column(
            children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameText,
              focusNode: nameFocus,
              decoration: InputDecoration(
                  hintText: "Enter your name ",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green),
                  )),
              onSubmitted: (value) {
                name = nameText.text;
              },
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: companyText,
              focusNode: companyFocus,
              decoration: InputDecoration(
                  hintText: "Enter your dream Company ",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green),
                  )),
              onSubmitted: (value) {
                company =companyText.text;
              },
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: locationText,
              focusNode: locationFocus,
              decoration: InputDecoration(
                  hintText: "Enter company's location",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green),
                  )),
              onSubmitted: (value) {
                location = locationText.text;
              },
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = nameText.text;
                  location =locationText.text;
                  company =companyText.text;
                  img = true;
                });
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              child: const Text(
                "Dream Company",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(children: [
              Column(
                children: [
                  Container(
                    child: Text(
                      " Name : $name",
                      style: TextStyle(fontSize: 20),
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Text(
                      " Location :$location",
                      style: TextStyle(fontSize: 20),
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Text(
                      " Company :$company",
                      style: TextStyle(fontSize: 20),
                    ),
                    margin: EdgeInsets.all(10),
                  )
                ],
              ),
              Container(
                  height: 170,
                  width: 170,
                  margin: EdgeInsets.all(10),
                  child: (img)
                      ? (Image.network(
                          "https://static1.thetravelimages.com/wordpress/wp-content/uploads/2023/04/google-headquarters-mountain-view-california.jpg"))
                      : (const Text(" "))),
            ])
          ]
          )
        ]
      ),
      ),
    );
  }
}