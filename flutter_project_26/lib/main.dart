import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Lifecycle_demo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Lifecycle_demo extends StatefulWidget{

  const Lifecycle_demo({super.key});

  State createState(){ 
    print("In create state");
    return _lifecycleDemoState();
    }

}
class _lifecycleDemoState extends State{

  @override
  void initState() {
    super.initState();
    print("In init state");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In changed dependencies");
  }
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("In set state super");
  }
  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In did update widget");
  }
  int flag = 0;

  Widget build(BuildContext context){
    print("IN build");
    return Scaffold(

      appBar: AppBar(
        title: const Text("Lifecycle"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
          ),
          ElevatedButton(
            onPressed: (){
            setState(() {
              flag = 1;
            });
          },
          child: const Text("Change")
          ),
          (flag==1)?
          Container(height: 100,width: 100,color: Colors.black,)
          :Container()
        ],
      ),
    );

  }
}
