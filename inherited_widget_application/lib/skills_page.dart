import 'package:flutter/material.dart';
import 'package:inherited_widget_application/skills_model_class.dart';

class SkillsPage extends StatefulWidget{
  const SkillsPage({super.key});

  @override
  State createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage>{


  TextEditingController skillsController = TextEditingController();
  @override
  Widget build(BuildContext context){
    SkillsModelClass skillsObj = SkillsModelClass.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Skills"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: skillsController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                String newSkill = skillsController.text;
                setState(() {
                  skillsObj.skillsList.add(newSkill);
                });
              }, 
              child: const Text("Add Skill")
            ),
            ListView.builder(
              itemCount: skillsObj.skillsList.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 80,
                  width: 300,
                  color: Colors.purple[100],
                  child: Text("${skillsObj.skillsList[index]}"),
                );
              }
            )
          ],
        ),
      ),
    );
  }
}