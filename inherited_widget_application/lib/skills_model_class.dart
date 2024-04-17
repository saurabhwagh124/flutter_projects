import 'package:flutter/material.dart';

class SkillsModelClass extends InheritedWidget{
  final int id;
  final String name;
  final String username;
  final List skillsList;
  const SkillsModelClass(
    {
      super.key,
      required this.id,
      required this.name,
      required this.username,
      required this.skillsList,
      required super.child,
      
    }
  );

  @override
  bool updateShouldNotify(SkillsModelClass oldWidget) {
    return skillsList.length != oldWidget.skillsList.length;
  }

  static SkillsModelClass of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<SkillsModelClass>()!;
  }
  
}