import 'dart:ui';

import 'package:hexcolor/hexcolor.dart';

List<ItemCart>CartItems=[];
List<Item>Beverages=[
  Item.name("Diet Coke", "355ml, Price", "src/Beverages/img1.png",1.99 ),
  Item.name("Sprite Can", "355ml, Price", "src/Beverages/img2.png", 1.50),
  Item.name("Apple & Grape Juice", "2L, Price", "src/Beverages/img3.png",5.99 ),
  Item.name("Orenge Juice", "2L, Price", "src/Beverages/img4.png", 8.99),
  Item.name("Coca Cola Can", "325ml, Price", "src/Beverages/img5.png", 4.99),
  Item.name("Pepsi Can", "325ml, Price", "src/Beverages/img6.png", 4.99),
];
List<ItemCategoris>categorie=[
  ItemCategoris.name("Frash Fruits & Vegetable", "src/c1.png", HexColor("#53B175"),[]),
  ItemCategoris.name("Cooking Oil & Ghee", "src/c2.png", HexColor("#F8A44C"),[]),
  ItemCategoris.name("Meat & Fish", "src/c3.png", HexColor("#F7A593"),[]),
  ItemCategoris.name("Bakery & Snacks", "src/c4.png", HexColor("#D3B0E0"),[]),
  ItemCategoris.name("Dairy & Eggs", "src/c5.png", HexColor("#FDE598"),[]),
  ItemCategoris.name("Beverages", "src/c6.png", HexColor("#B7DFF5"),Beverages),
  ItemCategoris.name("Frash Fruits & Vegetable", "src/c1.png", HexColor("#53B175"),[]),
  ItemCategoris.name("Cooking Oil & Ghee", "src/c2.png", HexColor("#F8A44C"),[]),
  ItemCategoris.name("Meat & Fish", "src/c3.png", HexColor("#F7A593"),[]),
  ItemCategoris.name("Bakery & Snacks", "src/c4.png", HexColor("#D3B0E0"),[]),
  ItemCategoris.name("Dairy & Eggs", "src/c5.png", HexColor("#FDE598"),[]),
  ItemCategoris.name("Beverages", "src/c6.png", HexColor("#B7DFF5"),[]),
];
double totalCast(){
  double ans=0;
  for(int i=0; i<CartItems.length;i++){
    ans+=CartItems[i].totalPrice;
  }
  return ans;
}
void addIteminCart(Item item){
  for(int i=0; i<CartItems.length;i++){
    if(CartItems[i].item.name == item.name){
      CartItems[i].number++;
      CartItems[i].totalPrice+=CartItems[i].item.price;
      return;
    }
  }
  CartItems.add(ItemCart.name(item, 1, item.price));
}
void addItemincategori(Item item,String nameCate){
  for(int i=0; i<categorie.length;i++){
    if(categorie[i].name == nameCate){
      categorie[i].items.add(item);
      return;
    }
  }
}
class ItemCart{
  Item item;
  int number;
  double totalPrice;

  ItemCart.name(this.item, this.number, this.totalPrice);
}
class ItemCategoris{
  String name,img;
  Color backgroundColor;
  List<Item> items=[];
  ItemCategoris.name(this.name, this.img, this.backgroundColor,this.items);
}
class Item{
  String name,descrption,img;
  double price;

  Item.name(this.name, this.descrption, this.img, this.price);
}

