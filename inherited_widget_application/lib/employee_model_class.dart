import 'package:flutter/material.dart';

class EmpModelClass extends InheritedWidget{
  
  final int id;
  final String name;
  final String username;
  
  const EmpModelClass({
    super.key,
    required this.id,
    required this.name,
    required this.username,
    required super.child
  });

  @override
  bool updateShouldNotify(EmpModelClass oldWidget) {
    return id != oldWidget.id;
  }

  static EmpModelClass of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<EmpModelClass>()!;
  }
}