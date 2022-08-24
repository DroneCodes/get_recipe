import 'package:flutter/material.dart';
import 'package:get_recipe/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Get Recipe',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


