import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Onbording.dart';
import 'package:pcitest/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PCI NGP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:HexColor("#53B175")),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

