import 'package:emp/Sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController name = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm_Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, top: 86, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/1.png",
                  // height: 250,
                  // width: 250,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Login to your Account",
              style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(0, 0, 0, 0.15))
                  ]),
              child: TextFormField(
                controller: name,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "Name"),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(0, 0, 0, 0.15))
                  ]),
              child: TextFormField(
                controller: username,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "Username"),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(0, 0, 0, 0.15))
                  ]),
              child: TextFormField(
                controller: password,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "Password"),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                        color: Color.fromRGBO(0, 0, 0, 0.15))
                  ]),
              child: TextFormField(
                controller: confirm_Password,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "Confirm Password"),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signpage()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                //  padding: EdgeInsets.symmetric(horizontal: 118, vertical: 15),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(14, 161, 125, 1)),
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signpage()),
                    );
                  },
                  child: Text(
                    "  Sign up",
                    style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(14, 161, 125, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}