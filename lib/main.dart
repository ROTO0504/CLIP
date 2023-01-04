import 'package:clip/view/components/fab_add.dart';
import 'package:clip/view/routes/home.dart';
import 'package:flutter/material.dart';
import 'package:clip/view/components/bottomNavbar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightGreen,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false, //バナーの消去
      title: 'CLIP',
      home: BottomNavbar(),
    );
  }
}
