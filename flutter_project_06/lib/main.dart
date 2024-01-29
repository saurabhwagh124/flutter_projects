import 'package:flutter/material.dart';
import 'package:stateful_assignment3/assignmnet3.dart';
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Assignment3(),
);
}
}