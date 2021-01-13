import 'package:flutter/material.dart';
import 'package:vatansoft_demo/ui/HomePage.dart';



void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white
        ),
        brightness:Brightness.light,
      ),
            home: HomePage()
    );
  }
}