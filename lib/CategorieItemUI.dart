import 'package:flutter/material.dart';
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
      ),
    );
  }
}
