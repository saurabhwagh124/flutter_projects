import 'package:flutter/material.dart';


List svgPath  = [
  "assets/medicines.svg",
  "assets/food.svg",
  "assets/shopping.svg",
  "assets/fuel.svg",
  "assets/entertainment.svg"
];

Map<String, int> data = {
  "Food": 650,
  "Fuel": 300,
  "Medicine": 500,
  "Entertainment": 405,
  "Shopping": 325,
};

List<Color> colorsList = [
  const Color.fromRGBO(214, 3, 3, 0.7),
  const Color.fromRGBO(0, 148, 255, 0.7),
  const Color.fromRGBO(0, 174, 91, 0.7),
  const Color.fromRGBO(100, 62, 255, 0.7),
  const Color.fromRGBO(241, 38, 197, 0.7),
];