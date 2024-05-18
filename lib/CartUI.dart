import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Moduls.dart';
import 'package:pcitest/OrderAccepted.dart';

class CartUI extends StatefulWidget {
  const CartUI({super.key});

  @override
  State<CartUI> createState() => _CartUIState();
}

class _CartUIState extends State<CartUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Center(child: Text("My Cart"),),
        automaticallyImplyLeading: false,),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount:1,
              childAspectRatio: 2.5,
              children:CartItems.map((itemCart) => InkWell(
                onTap: (){

                },
                child: Container(
                    decoration: BoxDecoration(
                      border:Border.all(color:HexColor("#E2E2E2")),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              padding: const EdgeInsets.only(left: 10,top: 5),
                              alignment: AlignmentDirectional.centerStart,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  itemCart.item.name,
                                  style:const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding:const EdgeInsets.only(left: 10,top: 5),
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
                                    padding:const EdgeInsets.only(left: 15,right: 15),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        itemCart.number.toString(),
                                        style:const TextStyle(
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
                        Container(
                          alignment: AlignmentDirectional.centerEnd,
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: AlignmentDirectional.topEnd,
                                child: MaterialButton(
                                    child: SvgPicture.asset("src/x.svg"),
                                  onPressed: () => {
                                  setState(() {
                                    CartItems.remove(itemCart);
                                  }
                                )}
                              ),
                              ),
                              const SizedBox(height: 60,),
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  priceItem(itemCart.totalPrice),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                ),
              )).toList(),
            ),
          ),
          Container(
            padding:const EdgeInsets.only(bottom: 15),
            alignment: AlignmentDirectional.bottomCenter,
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
              color: HexColor("#53B175"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 600,
                      child: ListView(

                        children: [
                          const Padding(
                          padding: const EdgeInsets.only(top:30,left: 30 ),
                          child:  Text("Checkout",style: TextStyle(fontSize: 32,color: Colors.black,decoration: TextDecoration.none,),textAlign: TextAlign.start,),
                          ),
                          Divider(
                            color:  HexColor("7C7C7C"),
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: ListTile(
                              onTap: (){

                              },
                              title:Text("Delivery",style: TextStyle(fontSize: 20,color:  HexColor("7C7C7C"),decoration: TextDecoration.none),),
                              trailing: Text("Select Method",style: TextStyle(fontSize: 18,color:  HexColor("000000"),decoration: TextDecoration.none),),
                            ),
                          ),
                          Divider(
                            color:  HexColor("7C7C7C"),
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: ListTile(
                              onTap: (){

                              },
                              title:Text("Pament",style: TextStyle(fontSize: 20,color:  HexColor("7C7C7C"),decoration: TextDecoration.none),),
                              trailing: SvgPicture.asset("src/card.svg"),
                            ),
                          ),
                          Divider(
                            color:  HexColor("7C7C7C"),
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: ListTile(
                              onTap: (){

                              },
                              title:Text("Promo Code",style: TextStyle(fontSize: 20,color:  HexColor("7C7C7C"),decoration: TextDecoration.none),),
                              trailing: Text("Pick Discount",style: TextStyle(fontSize: 18,color:  HexColor("000000"),decoration: TextDecoration.none),),
                            ),
                          ),
                          Divider(
                            color:  HexColor("7C7C7C"),
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: ListTile(
                              onTap: (){

                              },
                              title:Text("Total Cast",style: TextStyle(fontSize: 20,color:  HexColor("7C7C7C"),decoration: TextDecoration.none),),
                              trailing: Text(priceItem(totalCast()),style: TextStyle(fontSize: 18,color:  HexColor("000000"),decoration: TextDecoration.none),),
                            ),
                          ),
                          Divider(
                            color:  HexColor("7C7C7C"),
                            thickness: 1,
                          ),

                          Container(
                            padding:const EdgeInsets.only(bottom: 10),
                            alignment: AlignmentDirectional.bottomCenter,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                              color: HexColor("#53B175"),
                              onPressed: (){
                                CartItems.clear();
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderAccepted()));
                              },
                              minWidth: 353,
                              height: 50,
                              child: const Text("Ger Started",style: TextStyle(fontSize: 18,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              minWidth: 353,
              height: 67,
              child: const Text("Ger Checkout",style: TextStyle(fontSize: 18,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }
  String priceItem(double p){
    return "\$${p.toStringAsFixed(2)}";
  }

}
