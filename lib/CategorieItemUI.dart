import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Explore.dart';
import 'package:pcitest/Moduls.dart';

class CategorieItemUI extends StatelessWidget {
  CategorieItemUI(this.categorie,{super.key});
  ItemCategoris categorie;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text(categorie.name)),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            alignment: AlignmentDirectional.centerEnd,
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
              color: HexColor("#53B175"),
              onPressed: (){
                print("d");
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
        child: Container(
            child: GridView.count(
              crossAxisCount:2,
              childAspectRatio: 0.75,
              children:categorie.items.map((item) => InkWell(
                onTap: (){
                  print(item);

                },
                child: Container(
                    margin:EdgeInsets.all(10) ,
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
                          padding: EdgeInsets.only(left: 10,top: 5),
                          alignment: AlignmentDirectional.centerStart,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              item.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10,top: 5),
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
                                padding: EdgeInsets.only(left: 10,top: 15),

                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    priceItem(item.price),
                                    style: TextStyle(
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
                                    print("d");
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
            )
        ),
      ),
    );
  }
  String priceItem(double p){
    return "\$"+p.toString();
  }
}
