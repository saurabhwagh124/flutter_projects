import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(35),
            decoration: BoxDecoration(color: const Color.fromRGBO(9, 81, 189, 0.867),
            shape: BoxShape.circle, 
            boxShadow: const [BoxShadow(color: Colors.yellow, offset: Offset(0, 0),spreadRadius: 10, blurRadius: 10)],
            border: Border.all(width: 4,color: Colors.red,strokeAlign: BorderSide.strokeAlignInside,), 
            ),
            child: 
            Image.network("https://th.bing.com/th?id=OIP.0CZd1ESLnyWIHdO38nyJDAAAAA&w=275&h=226&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2")
          ),
        )
      )
    );
  }
}
