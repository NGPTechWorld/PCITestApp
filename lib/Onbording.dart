import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset('src/back1.jpeg',fit: BoxFit.fitHeight,),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: SvgPicture.asset("src/logomin.svg"),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Welcome \nto our Store",style: TextStyle(fontSize: 44,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 30),
              child: const Text("Ger your groceries in as fast as one hour",style: TextStyle(fontSize: 14,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70,top: 20),
              child: MaterialButton(
                color: HexColor("#53B175"),
                onPressed: (){
                  print("object");
                },
                minWidth: 353,
                height: 67,
                child: const Text("Ger Started",style: TextStyle(fontSize: 18,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
              ),
            )
          ],
        )
        ],
      ),
    );
  }
}
