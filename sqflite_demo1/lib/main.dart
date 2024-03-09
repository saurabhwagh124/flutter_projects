import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
 
class Player{

  final String name;
  final int jerNo;
  final int runs;
  final double avg;

  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String,dynamic> playerMap(){
    return{
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg' : avg,
    };
  }

  @override
  String toString(){
    return'{ name : $name, jerNo: $jerNo, runs : $runs, avg : $avg}';
  }
}

Future insertPlayerData(Player obj) async{
  final localDB = await database;

  await localDB.insert(
    "Player",
    obj.playerMap(),
    conflictAlgorithm : ConflictAlgorithm.replace,
  );
}

Future   getplayerData() async{
final localDB = await database;

List<Map<String, dynamic>> listPlayers = await localDB.query("Player");

  return List.generate(listPlayers.length, (index){
    return Player(
      name: listPlayers[index]['name'], 
      jerNo: listPlayers[index]['jerNo'], 
      runs: listPlayers[index]['runs'], 
      avg: listPlayers[index]['avg']
    );
  });
}


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(),"PlayerDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        "CREATE TABLE Player(name TEXT, jerNO INT PRIMARY KEY, runs INT, avg REAL)"
      );
    },
  );
  Player batsman1 = Player(name: "Saurabh Wagh", jerNo: 88, runs: 746, avg: 44.21);
  print(batsman1);
  await insertPlayerData(batsman1);
  print(await getplayerData());
}