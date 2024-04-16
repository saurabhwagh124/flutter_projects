import 'package:clothes_on_project/splash_screen.dart';
import 'package:flutter/material.dart';

import 'databaseConnections.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inistalizedDatabase();
  clothesList = await getClothes();
  premClothes = await getPremiumClothes();
  popuClothes = await getPopularClothes();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      //LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
