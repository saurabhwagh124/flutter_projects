import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';

List<ClothesModelClass> clothesList = List.empty(growable: true);
List<ClothesModelClass> premClothes = List.empty(growable: true);
List<ClothesModelClass> popuClothes = List.empty(growable: true);
dynamic database;

class ClothesModelClass {
  int? id;
  String clothesName;
  String clothesUrl;
  double price;
  String size;
  String popular;

  ClothesModelClass({
    this.id,
    required this.clothesName,
    required this.clothesUrl,
    required this.price,
    required this.size,
    required this.popular,
  });

  Map<String, dynamic> toMap() {
    return {
      'clothesName': clothesName,
      'clothesUrl': clothesUrl,
      'price': price,
      'size': size,
      'popular': popular,
    };
  }

  @override
  String toString() {
    return '''
      id : $id,
      clothesName : $clothesName,
      clothesurl : $clothesUrl,
      price : $price
    ''';
  }
}

Future insertNewClothes(ClothesModelClass obj) async {
  final localDB = await database;

  await localDB.insert(
    "ClothesInfo",
    obj.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<ClothesModelClass>> getClothes() async {
  final localDB = await database;
  List<Map<String, dynamic>> Clothes = await localDB.query("ClothesInfo");
  return List.generate(Clothes.length, (i) {
    return ClothesModelClass(
        id: Clothes[i]['id'],
        clothesName: Clothes[i]['clothesName'],
        clothesUrl: Clothes[i]['clothesUrl'],
        price: Clothes[i]['price'],
        size: Clothes[i]['size'],
        popular: Clothes[i]['popular']);
  });
}

Future<List<ClothesModelClass>> getPremiumClothes() async {
  final localDB = await database;
  List<Map<String, dynamic>> premiumClothes = await localDB
      .query("ClothesInfo", where: "popular = ?", whereArgs: ['premium']);
  return List.generate(premiumClothes.length, (index) {
    return ClothesModelClass(
      id: premiumClothes[index]['id'],
      clothesName: premiumClothes[index]['clothesName'],
      clothesUrl: premiumClothes[index]['clothesUrl'],
      price: premiumClothes[index]['price'],
      size: premiumClothes[index]['size'],
      popular: premiumClothes[index]['popular'],
    );
  });
}

Future<List<ClothesModelClass>> getPopularClothes() async {
  final localDB = await database;
  List<Map<String, dynamic>> premiumClothes = await localDB
      .query("ClothesInfo", where: "popular = ?", whereArgs: ['popular']);
  return List.generate(premiumClothes.length, (index) {
    return ClothesModelClass(
      id: premiumClothes[index]['id'],
      clothesName: premiumClothes[index]['clothesName'],
      clothesUrl: premiumClothes[index]['clothesUrl'],
      price: premiumClothes[index]['price'],
      size: premiumClothes[index]['size'],
      popular: premiumClothes[index]['popular'],
    );
  });
}

Future inistalizedDatabase() async {
  database = openDatabase(
    path.join(await getDatabasesPath(), "ClothesDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE ClothesInfo(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        clothesName TEXT,
        clothesUrl TEXT,
        price REAL,
        size TEXT,
        popular TEXT
      )''');
      print(await getDatabasesPath());
      print("database path");
    },
  );
  clothesList = await getClothes();
  popuClothes = await getPopularClothes();
  premClothes = await getPremiumClothes();
}
