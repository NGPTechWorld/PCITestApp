import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/HomePage.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({super.key});

  @override
  State<OrderAccepted> createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('src/back2.png'),
          fit: BoxFit.cover,
          alignment: Alignment(0.2, 0.2),
        ),
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Container(
                alignment: AlignmentDirectional.center,
                child: SvgPicture.asset("src/acc.svg",fit: BoxFit.contain,),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child:  Text("Your Order has been \naccepted",style: TextStyle(fontSize: 28,color: Colors.black,decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),Padding(
              padding: const EdgeInsets.only(top:10 ),
              child:  Text("Your items has been placcd and is on \nit’s way to being processed",style: TextStyle(fontSize: 14,color: HexColor("7C7C7C"),decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                color: HexColor("#53B175"),
                onPressed: (){

                },
                minWidth: 353,
                height: 67,
                child: const Text("Track Order",style: TextStyle(fontSize: 18,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
                minWidth: 353,
                height: 67,
                child: const Text("Back to home",style: TextStyle(fontSize: 18,color: Colors.black,decoration: TextDecoration.none),textAlign: TextAlign.center,),
              ),
            ),
          ],
      ),
    );
  }
}
