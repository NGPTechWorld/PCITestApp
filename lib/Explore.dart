import 'package:flutter/material.dart';
import 'package:pcitest/CategorieItemUI.dart';
import 'package:pcitest/Moduls.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Find Products"),),
      automaticallyImplyLeading: false,),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount:2,
          children:categorie.map((cate) => InkWell(
            onTap: (){
              print(cate);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CategorieItemUI(cate)));
            },
            child: Container(
                margin:const EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                  border:Border.all(color: setColorAlpha(cate.backgroundColor, 0.7)),
                  borderRadius: BorderRadius.circular(20),
                  color: setColorAlpha(cate.backgroundColor,0.1),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(cate.img,height: 100,width: 120,fit: BoxFit.contain,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          cate.name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          )).toList(),
        ),
      ),
    );
  }
  Color setColorAlpha(Color c,double d){
    return c.withOpacity(d);
  }
}
class CategoryItem extends StatelessWidget {
  final String categoryName;
  final String imageUrl;
  final Color backgroundColor;

  const CategoryItem({super.key,
    required this.categoryName,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}