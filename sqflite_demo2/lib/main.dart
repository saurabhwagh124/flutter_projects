import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


dynamic database;
class Employee{
  final int empId;
  final String name;
  final double salary;

  Employee({
    required this.empId,
    required this.name,
    required this.salary
  });

  Map<String,dynamic> employeeMap(){
    return{
      'empId':empId,
      'name': name,
      'salary':salary
    };
  }
}

Future<void> insertEmployeeData(Employee emp) async{
  final localDB = await database;
  localDB.insert(
    'Employee',
    emp.employeeMap(),
    conflictAlgorithm : ConflictAlgorithm.replace
  );
}

Future<List<Map<String,dynamic>>> getEmployeeData() async{
  final localDB = await database;

  List<Map<String,dynamic>> mapEntry = await localDB.query("Employee");
  return mapEntry;
}

Future<void> deleteEmpData(Employee emp) async{
  final localDB = await database;
  
  await localDB.delete(
    'Employee',
    where: "empId = ?",
    whereArgs: [emp.empId],
  );
}

void main() async{
  runApp(const MainApp());

  database = openDatabase(
    join(await getDatabasesPath(),"Employee.db"),
    version: 1,
    onCreate: (db, version){
      db.execute(
        '''CREATE TABLE Employee
        (empId INT PRIMARY KEY,
        name TEXT,
        salary REAL
        )'''
      );
    },
  );
  Employee emp1 = Employee(empId: 001, name: "Piyush Shinde", salary: 73000.12);
  Employee emp2 = Employee(empId: 012, name: "Pratik Tuptewar", salary: 72015.21);

  await insertEmployeeData(emp1);
  await insertEmployeeData(emp2);

  List<Map<String,dynamic>> retVal = await getEmployeeData();

  for (var i = 0; i < retVal.length; i++) {
    print(retVal[i]);  
  }

  await deleteEmpData(emp2);
  retVal = await getEmployeeData();

  for (var i = 0; i < retVal.length; i++) {
    print(retVal[i]);  
  }

  Employee emp3 = Employee(empId: 003, name: "Abhinav Patil", salary: 95000.52);
  await insertEmployeeData(emp3);
  print("Insered data of emp3");
  
  retVal = await getEmployeeData();
  for (var i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("SQFLITE"),
        ),
      ),
    );
  }
}