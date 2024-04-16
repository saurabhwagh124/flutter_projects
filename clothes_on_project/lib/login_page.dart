import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget{
  const LoginPage ({super.key});
  
  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State{

  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormFieldState> _usernameKey=GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _passwordKey=GlobalKey<FormFieldState>();

  TextEditingController signUpUserController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  final GlobalKey<FormFieldState> _signupUKey=GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _signupPasswordKey=GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _mobileKey=GlobalKey<FormFieldState>();

  bool hidePass =true;
  bool hidePass2 =true;

  void signupBottomSheet(BuildContext context){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 10, right: 10, top: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    "Signup",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _signupUKey,
                        controller: signUpUserController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter UserName";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Username",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide:
                                    BorderSide(color: Colors.purpleAccent))),
                      ),
                      Text(
                        "Enter Password",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                      TextFormField(
                        key: _signupPasswordKey,
                        controller: signUpPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Password";
                          } else {
                            return null;
                          }
                        },
                        obscureText: hidePass2,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock_outline),
                            border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        
                        ),
                        suffixIcon: IconButton(onPressed: (){
                          hidePass2  = !hidePass2;
                          setState(() { 
                            
                          });
                        }, 
                        icon: (hidePass2)? const Icon(Icons.visibility_off_outlined) : const Icon(Icons.visibility_outlined))
                        )
                      ),
                      Text("Enter Mobile number",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                      ),
                      TextFormField(
                        key: _mobileKey,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: mobileController,
                        validator: (value) {
                          if (value == null || value.isEmpty || value.length<10) {
                            return "Enter correct mobile no.";
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.mobile_friendly),
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.tealAccent)),
                      onPressed: (){
                      bool  usernameSignupFlag  = _signupUKey.currentState!.validate();
                      bool passwordSignupFlag = _signupPasswordKey.currentState!.validate();
                      bool mobileFlag  = _mobileKey.currentState!.validate();
                        if(usernameSignupFlag&& passwordSignupFlag&& mobileFlag){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Signup SuccessFull")));
                       
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Signup failed")));
                      }
                        mobileController.clear();
                        signUpUserController.clear();
                        signUpPasswordController.clear();
                        Navigator.of(context).pop();
                      }, 
                      child: const Text("Submit")),
                  ),
                  const SizedBox(height: 40,)
                ]
              ),
            )
        );
      }
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/login_screen.png'),fit: BoxFit.fitHeight),
        ),
        alignment: Alignment.center,
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text("Clothes4U", style: GoogleFonts.metamorphous(fontSize:40, fontWeight: FontWeight.w900, letterSpacing:2, color: Colors.white,backgroundColor: Color.fromARGB(255, 40, 129, 231)),
                  )
                ),
                const SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                  child: TextFormField(
                    key: _usernameKey,
                    validator: (value){
                      if(value==null||value.isEmpty){
                       return "Enter Username";
                      }else{
                        return null;
                      }
                    },
                    controller: loginController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled:  true,
                      prefixIcon: const Icon(Icons.person_outline),
                      hintText: "Enter UserName",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.red, 
                          width: 5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.red, 
                          width: 1
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.red, 
                          width: 1
                        ),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    key: _passwordKey,
                     validator: (value){
                      if(value==null||value.isEmpty){
                       return "Enter Password";
                      }else{
                        return null;
                      }
                    },
                    obscureText: hidePass,
                    obscuringCharacter: "*",
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.red, 
                          width: 5
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.red, 
                          width: 1
                        ),
                      ), 
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.red, 
                          width: 1
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: (){
                          hidePass = !hidePass;
                          setState(() {});
                        }, icon: (hidePass)? const Icon(Icons.visibility_off_outlined) : const Icon(Icons.visibility_outlined)
                      ) 
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){
                      bool usernameflag = _usernameKey.currentState!.validate();
                      bool passwordflag = _passwordKey.currentState!.validate();
                    

                      if(usernameflag&&passwordflag){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login SuccessFully")));
                        Navigator.push(context, MaterialPageRoute(builder: (context){return const MyNewUI();}));
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Login Failed")));
                      }
                    },
                    child: const Text("Login", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),)
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){
                      signupBottomSheet(context);
                    },
                    child: const Text("Signup"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}