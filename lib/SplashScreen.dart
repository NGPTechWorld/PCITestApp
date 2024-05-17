import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Onbording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double  width= MediaQuery.of(context).size.width;
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onbording()),
      );
    });
    return Container(
      color: HexColor("#53B175"),
      child: Center(
        child: SvgPicture.asset("src/logo.svg"),
      ),
    );
  }
}
