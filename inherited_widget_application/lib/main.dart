import 'package:flutter/material.dart';
import 'package:inherited_widget_application/employee_model_class.dart';
import 'package:inherited_widget_application/skills_model_class.dart';
import 'package:inherited_widget_application/skills_page.dart';

void main() {
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        home: FieldPage(),
        debugShowCheckedModeBanner: false,
      );
  }
}


class FieldPage extends StatefulWidget{
  const FieldPage({super.key});

  @override
  State createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage>{

  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implementation of inherited widget", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body:Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 300,
            child: TextFormField(
              controller: _idController,
              decoration: InputDecoration(
                hintText: "Enter Id",
                enabled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.red)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.red)
                )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            width: 300,
            alignment: Alignment.center,
            child: TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                enabled: true,
                hintText: "Enter Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.red)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.red)
                )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: 300,
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Enter Username",
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.red)
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.red)
                )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.greenAccent)
              ),
              onPressed: (){
               int vl=  int.parse(_idController.text); 
               String name = _nameController.text;
               String username = _usernameController.text;
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return EmpModelClass(
                      id: vl, 
                      name: name, 
                      username: username, 
                      child: const DisplayPage()
                    );
                  }));
                });
                _idController.clear();
                _nameController.clear();
                _usernameController.clear();
              },
              child: const Text("Submit"),
            ),
          )
        ],
      )
      )
    );
  }
}

class DisplayPage extends StatelessWidget{
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context){
    EmpModelClass shareObj = EmpModelClass.of(context);
    return Scaffold(
          appBar: AppBar(
            title: const Text("Results"),
            centerTitle: true,
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 200,
                color: Colors.red[100],
                child: Text("${shareObj.id}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 40,
                width: 200,
                color: Colors.blue[100],
                child: Text(shareObj.name,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 40,
                width: 200,
                color: Colors.green[100],
                child: Text(shareObj.username, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return SkillsModelClass(
                    id: shareObj.id, 
                    name: shareObj.name, 
                    username: shareObj.username,
                    skillsList: [],
                    child: const SkillsPage()
                  );
                }));
              }, child: const Text("Add Skills"))
            ],
          ),
        ) ,
        );
  }
}
