import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class SharedData extends InheritedWidget{
  final int runs;
  const SharedData(
    { super.key,
      required this.runs,
      required super.child
    }
  );

  static SharedData of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }
  
  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return runs != oldWidget.runs;
  }
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const SharedData(
      runs: 76, 
      child: MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      )
    );
  }

}

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});
  
  @override
  State createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  
  @override
  Widget build(BuildContext context){
    SharedData sharedObj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget 101"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Center(
            child: Row(
              children: [
                const Text("Team runs"),
                Text("${sharedObj.runs}"),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          const AccessWidget()
        ],
      ),
    );
  }
}

class AccessWidget extends StatelessWidget{
  const AccessWidget({super.key});
  @override
  Widget build(BuildContext context){
    SharedData sharedobj2 = SharedData.of(context);
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              child: Text("Runs scored by Player 1: ${sharedobj2.runs}"),
            ),
            Container(
              color: Colors.greenAccent,
              child: Text("Runs scored by Player 2: ${sharedobj2.runs}"),
            )
          ],
        ),
      ),
    );
  }
}