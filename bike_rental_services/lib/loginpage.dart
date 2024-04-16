import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginPage extends StatefulWidget{
  const loginPage ({super.key});

  State createState() => _loginPageState();
}

class _loginPageState extends State{

  TextEditingController loginController = 


  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          child: Column(
            children: [
              TextFormField(

              )
            ],
          ),
        ),
      ),
    );
  }
}