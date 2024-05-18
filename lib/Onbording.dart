import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/HomePage.dart';


class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('src/back1.jpeg'),
            fit: BoxFit.cover,
            alignment: Alignment(0.2, 0.2),
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: SvgPicture.asset("src/logomin.svg"),),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Welcome \nto our store",style: TextStyle(fontSize: 44,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
          ),const Padding(
            padding: EdgeInsets.only(top: 8,bottom: 30),
            child: Text("Ger your groceries in as fast as one hour",style: TextStyle(fontSize: 14,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70,top: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
              color: HexColor("#53B175"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
              },
              minWidth: 353,
              height: 67,
              child: const Text("Get Started",style: TextStyle(fontSize: 18,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),
          )
        ],
      )
      ],
    );
  }
}
