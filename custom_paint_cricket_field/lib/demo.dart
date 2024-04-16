import 'package:flutter/material.dart';

import 'cricket_shot_map.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: ShotArea(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ShotArea extends StatefulWidget{
  const ShotArea({super.key});

  @override
  State createState() =>_ShotAreaState();
}

class _ShotAreaState extends State{
  @override
   Widget build(BuildContext context){
    return Scaffold( 
      body: Center(
        child: CricketRunMap(
          height: 350,
          width: 350,
          isRightHand: true,
          onPositionSelected: (String selectedPosition){
            print('Selected Position: $selectedPosition');
          },
        ),
      ),
    );
  }
}