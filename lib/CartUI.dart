import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Moduls.dart';

class CartUI extends StatefulWidget {
  const CartUI({super.key});

  @override
  State<CartUI> createState() => _CartUIState();
}

class _CartUIState extends State<CartUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("My Cart"),),
        automaticallyImplyLeading: false,),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: GridView.count(
                  crossAxisCount:1,
                  childAspectRatio: 2.5,
                  children:CartItems.map((itemCart) => InkWell(
                    onTap: (){
                      print(itemCart);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          border:Border.all(color:HexColor("#E2E2E2")),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(itemCart.item.img,height: 100,width: 100,fit: BoxFit.contain,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,top: 5),
                                  alignment: AlignmentDirectional.centerStart,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      itemCart.item.name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10,top: 5),
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      itemCart.item.descrption,
                                      style: TextStyle(
                                        color: HexColor("#7C7C7C"),
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: AlignmentDirectional.centerEnd,
                                        decoration: BoxDecoration(
                                          border:Border.all(color:HexColor("#E2E2E2")),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                                          onPressed: (){
                                            setState(() {
                                              if(itemCart.number>1){
                                                itemCart.number--;
                                                itemCart.totalPrice -= itemCart.item.price;
                                              }
                                            });
                                          },
                                          minWidth: 30,
                                          height: 40,
                                          child: SvgPicture.asset("src/sub.svg",width: 15,color:  HexColor("#B3B3B3"),),
                                        ),

                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15,right: 15),
                                        alignment: AlignmentDirectional.centerStart,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            itemCart.number.toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: AlignmentDirectional.centerEnd,
                                        decoration: BoxDecoration(
                                          border:Border.all(color:HexColor("#E2E2E2")),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                                          onPressed: (){
                                            setState(() {
                                              itemCart.number++;
                                              itemCart.totalPrice +=itemCart.item.price;
                                            });
                                          },
                                          minWidth: 30,
                                          height: 40,
                                          child: SvgPicture.asset("src/plus.svg",width: 15,color:  HexColor("#53B175"),),
                                        ),

                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(

                                    child: MaterialButton(
                                        child: SvgPicture.asset("src/x.svg"),
                                      onPressed: () => {
                                      setState(() {
                                        CartItems.remove(itemCart);
                                      }
                                    )}
                                  ),
                                  ),
                                  SizedBox(height: 60,),
                                  Container(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        priceItem(itemCart.totalPrice),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  )).toList(),
                )
            ),
          ),
        ],
      ),
    );
  }
  String priceItem(double p){
    return "\$"+p.toStringAsFixed(2);
  }

}
