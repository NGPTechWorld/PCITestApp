import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pcitest/Moduls.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: GridView.count(
            crossAxisCount:2,
            children:categories.map((cate) => InkWell(
              onTap: (){
                 print(cate);
              },
              child: Container(
                  margin:EdgeInsets.all(10) ,
                  decoration: BoxDecoration(
                    border:Border.all(color: setColorAlpha(cate["backgroundColor"], 0.7)),
                    borderRadius: BorderRadius.circular(20),
                    color: setColorAlpha(cate["backgroundColor"],0.1),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(cate["imageUrl"],height: 100,width: 120,fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            cate["name"],
                            style: TextStyle(
                              color: Colors.black, // لون النص
                              fontSize: 16, // حجم النص الأقصى
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            )).toList(),
          )
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

  CategoryItem({
    required this.categoryName,
    required this.imageUrl,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
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