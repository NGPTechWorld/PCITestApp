import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Moduls.dart';
import 'package:pcitest/OrderAccepted.dart';

class CategorieItemUI extends StatefulWidget {
  CategorieItemUI(this.categorie,{super.key});
   ItemCategoris categorie;

  @override
  State<CategorieItemUI> createState() => _CategorieItemUIState(categorie);
}

class _CategorieItemUIState extends State<CategorieItemUI> {
  _CategorieItemUIState(this.itemCategoris);
  ItemCategoris itemCategoris;



  @override
  Widget build(BuildContext context) {
    TextEditingController nameItem=TextEditingController();
    TextEditingController decItem=TextEditingController();
    TextEditingController priceItem=TextEditingController();

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text(itemCategoris.name)),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 15),
            alignment: AlignmentDirectional.centerEnd,
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
              color: HexColor("#53B175"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 600,
                      child: ListView(

                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top:30,left: 30 ),
                            child:  Text("Add",style: TextStyle(fontSize: 32,color: Colors.black,decoration: TextDecoration.none,),textAlign: TextAlign.start,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                            child: TextFormField(
                              controller: nameItem,
                              decoration: const InputDecoration(hintText: "Name",),
                              style: TextStyle(fontSize: 18,color:  HexColor("000000"),decoration: TextDecoration.none),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                            child: TextFormField(
                              controller: decItem,
                              decoration: const InputDecoration(hintText: "Description"),
                              style: TextStyle(fontSize: 18,color:  HexColor("000000"),decoration: TextDecoration.none),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                            child: TextFormField(
                              controller: priceItem,
                              decoration: const InputDecoration(hintText: "Price"),
                              style: TextStyle(fontSize: 18,color:  HexColor("000000"),decoration: TextDecoration.none),
                            ),
                          ),
                          ListTile(
                            title:Text("Image",style: TextStyle(fontSize: 20,color:  HexColor("7C7C7C"),decoration: TextDecoration.none),),
                            trailing: SvgPicture.asset("src/p.svg"),
                          ),
                          Divider(
                            color:  HexColor("7C7C7C"),
                            thickness: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10,top: 20),
                            alignment: AlignmentDirectional.bottomCenter,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                              color: HexColor("#53B175"),
                              onPressed: (){
                                setState(() {
                                  String name=nameItem.text;
                                  String dec=decItem.text;
                                  double price=double.parse(priceItem.text);
                                  addItemincategori(Item.name(name, dec, "src/Beverages/img1.png", price),itemCategoris.name);
                                });
                              },
                              minWidth: 353,
                              height: 50,
                              child: const Text("add item",style: TextStyle(fontSize: 18,color: Colors.white,decoration: TextDecoration.none),textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              minWidth: 30,
              height: 40,
              child: SvgPicture.asset("src/plus.svg",width: 15,),
            ),
          )
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount:2,
          childAspectRatio: 0.75,
          children:itemCategoris.items.map((item) => InkWell(
            onTap: (){
            },
            child: Container(
                margin:const EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                  border:Border.all(color:HexColor("#E2E2E2")),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(item.img,height: 100,width: 120,fit: BoxFit.contain,),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      alignment: AlignmentDirectional.centerStart,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          item.name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,top: 5),
                      alignment: AlignmentDirectional.centerStart,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          item.descrption,
                          style: TextStyle(
                            color: HexColor("#7C7C7C"),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right: 10),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:const EdgeInsets.only(left: 10,top: 15),

                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                priceItemS(item.price),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.centerEnd,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                              color: HexColor("#53B175"),
                              onPressed: (){
                                addIteminCart(item);
                              },
                              minWidth: 30,
                              height: 40,
                              child: SvgPicture.asset("src/plus.svg",width: 15,),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ),
          )).toList(),
        ),
      ),
    );
  }
  String priceItemS(double p){
    return "\$${p.toStringAsFixed(2)}";
  }
}

