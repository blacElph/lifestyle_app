import 'package:flutter/material.dart';
import 'package:lifestyle_app/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeStyle',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: BottomNavBar(),
    );
  }
}
