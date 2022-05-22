import 'package:flutter/material.dart';
import 'package:trashgo/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff7F34AF),
        accentColor: Color(0xff9C4DCC),
        fontFamily: "Poppins",
      ),
      home: HomeScreen(),
    );
  }
}
