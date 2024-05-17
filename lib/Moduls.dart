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

final List<Map<String,dynamic>> categories=[
  {
    'name': 'Frash Fruits & Vegetable',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/ca51/c56f/c6c319bfab3990da934ed0eb9c5ae3e7?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=R6wwEpKR9Ktu5fYsBxLDUFRAtX0ZxegHRaFh-RFniegq83-B1DxFsetCRNERQM97jIrHms1QHDsle0fykLGYiq9QxvD46vApAqKVtWcH54oi4CIMAE8SMKvu8N-5fWmL13Vl4tb0PltvpSoLDtHfCh6sslFVUhnhn8E9W~rgVn0-EJlALI335AiNsbzxSqfCNGVFExZMAwms7UN9xLhSPCGeYNvh~dPcQoHIqBeWw9-yscQ4NQTJoIcuCvOMpsf8T8j28V~RggXulpYKA5Y-1F7ikk8fr4H9qjGhhUCYcJ83IqvGq-xjBnq9a6raM~6QB1NSsZ4uhFZSWNK32NwwSw__',
    'backgroundColor': HexColor("#53B175"),
  },
  {
    'name': 'Cooking Oil & Ghee',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/6bc8/dddf/f5d852ef29933852ca183be51838587e?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=L9UrxgkFuYl0Q5ODip2HMFxD9ffbanueDOXVWWP-E4RpRw8inWKlZxsYwakSyJIQwqYwk3Gw2U~lP3Dd-WkDaJRX-pfG5wB4f24n5Coc6l~36fxLlTCnCz~5NgGoG1S-ZvGGf~MIRAyXO6wXFn~YdVjuaDEonHO5YSQTHDB0b9fTXW8ts8DDDBHw7LCLKAeH9OvIsl4UGVEAshVhfp-jkbMvmsH3~x8JsNTjHOKjktgiwlO2GD2z9x5HLO-DhsmRnoMg7tcIxJBpAIBHj5hDNzvNOcEdQmKrspY64-SxzT3HtyeqFq2WHqR44dIROqolZDR~kLFK7BCC2PjgWVS5vg__',
    'backgroundColor': HexColor("#F8A44C"),
  },
  {
    'name':'Meat & Fish',
    'imageUrl':'https://s3-alpha-sig.figma.com/img/22d3/aac2/57974f1aad9e0ec045f5bfc22ef5a6ab?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l1uWfgpsobAszKG5xvRnuBk09s-NttvWcjrPywFKpjtxTpsLwS41sIkgcixK-P8E8LyxafLqbRVUs97i5fQB~fGoEuiGAQQdSqshskeb-4g3ODrdz8RINVB~eQehsCZJYcMgfGLY6lcHmiUukflJdyjyC4gdOnVYTCPavHcNMra87WXeRQpleR-j6Y6RwfRaUDzlT49vW0ZRle7kHNvvRuZtodaRUIoj2DsGIzCNf66Dd9J9MuiLBy6W30NpR~tMceiOXAr3SWGikjgIyfyscFFtQIcdr6YD-1mGlVd57SptV~~18A50bGv912Qv9waOoyP~QRjkHAi6CxQoKW8flg__',
    'backgroundColor':HexColor("#F7A593"),
  },
  {
    'name':'Bakery & Snacks',
    'imageUrl':'https://s3-alpha-sig.figma.com/img/e2fa/ac00/a6029bf4a611c1016eaf4b8f75db6d65?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V2IPXq8sn8bJcEy7jIKAjlHEI5ss36YBbwpNshO6e1TF60OoTZI32ICzn~O83EoI6zIHQKZcoryo8DR-7zsVDnwT~teO2pszoiluLhFHvFQFU-zRpefm4~KUwjk~A362wbfYT7y2VqsWbypjfOGbjYp3aOZWr8Y19xt6odCDIXoGTu4pTrUU5Hdf2-aMJuduUfprBSVH8jXhMjIj0EOpnBDQMfLElEzmpRSy~VptJup0niDwbR1049wssj0kaZQCAEryDJv5TW66YcTtnAnAjbgSSmcgv1u-ooxkR45I4dKy7L4Q-hDZqmEdtzSBlYCHIijk6tWNiGPEsCE00dcs2Q__',
    'backgroundColor':HexColor("#D3B0E0"),
  },
  {
    'name':'Dairy & Eggs',
    'imageUrl':'https://s3-alpha-sig.figma.com/img/94ca/9c0c/443493293986632d57e9fb6f1e3b963f?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GG6BHMwvE6oExlCeGxlaJ-2aG4FLjN8f~Gn1CaugTfe24n0s~1DRyQPGFQxC1n6sN6o6V4ZmqbyNrgB8DzF16eIKhqma5EAx4PzjH9fBR04J1ktn2KZaooISdAWhD4DrsXCteJcf~74TBeQHvdSMepSUNQtT4SFFVwjDtkpqvOzHTEsz-z5ODmXLSEzHe6AXuBBVfDu8fpvKj4twYdLkDpOpGMhVLgTJcHaKw8pXSDhkmzFqXJQ27-OGLpUuntiASqr9cyU8BDt7g4AQB3q~iwrVe9UojdKuCdnRI2zXT6-NGrJfKJKYfQ-ZHnFyfQKfEtEEPFyU1FATtR~yqH-qKA__',
    'backgroundColor':HexColor("#FDE598"),
  },
  {
    'name':'Beverages',
    'imageUrl':'https://s3-alpha-sig.figma.com/img/cf75/9129/87c6a2d11af9c6213699a2c5c6e3fb48?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=N5HNNM6-RQnwW8w5lTRkk-cjOlWr5OxjScTkimWu8vFWQgJBpr1bz2aVGJgVTEF6hcnxfuUi0LY8SoHXBLk5llk1KIID7NleoHThseYfNTVuOEnk2l3LTlSODW46BLH-fSlyM2Cx20ZxdpM9dHmZw9zBOfop3BX6tX5qDA9xfzul9ZXojSSuqz~xjqD2KYh6S~u03SntXT2sekysAWbM297kDfGoZJqT7HuMz8HPHNwyNj1Skg-5u~HJvYSZmG4GTSkK~jfU-FU-q35nlWf3rT3kyCLTUSenW4Ikc5XMzj16ryoAGdV6IvcJ~aK0ge7bHkDi6kGpMZ-vHGKxpyhpfg__',
    'backgroundColor':HexColor("#B7DFF5"),
  },{
    'name': 'Frash Fruits & Vegetable',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/ca51/c56f/c6c319bfab3990da934ed0eb9c5ae3e7?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=R6wwEpKR9Ktu5fYsBxLDUFRAtX0ZxegHRaFh-RFniegq83-B1DxFsetCRNERQM97jIrHms1QHDsle0fykLGYiq9QxvD46vApAqKVtWcH54oi4CIMAE8SMKvu8N-5fWmL13Vl4tb0PltvpSoLDtHfCh6sslFVUhnhn8E9W~rgVn0-EJlALI335AiNsbzxSqfCNGVFExZMAwms7UN9xLhSPCGeYNvh~dPcQoHIqBeWw9-yscQ4NQTJoIcuCvOMpsf8T8j28V~RggXulpYKA5Y-1F7ikk8fr4H9qjGhhUCYcJ83IqvGq-xjBnq9a6raM~6QB1NSsZ4uhFZSWNK32NwwSw__',
    'backgroundColor': HexColor("#53B175"),
  },
  {
    'name': 'Cooking Oil & Ghee',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/6bc8/dddf/f5d852ef29933852ca183be51838587e?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=L9UrxgkFuYl0Q5ODip2HMFxD9ffbanueDOXVWWP-E4RpRw8inWKlZxsYwakSyJIQwqYwk3Gw2U~lP3Dd-WkDaJRX-pfG5wB4f24n5Coc6l~36fxLlTCnCz~5NgGoG1S-ZvGGf~MIRAyXO6wXFn~YdVjuaDEonHO5YSQTHDB0b9fTXW8ts8DDDBHw7LCLKAeH9OvIsl4UGVEAshVhfp-jkbMvmsH3~x8JsNTjHOKjktgiwlO2GD2z9x5HLO-DhsmRnoMg7tcIxJBpAIBHj5hDNzvNOcEdQmKrspY64-SxzT3HtyeqFq2WHqR44dIROqolZDR~kLFK7BCC2PjgWVS5vg__',
    'backgroundColor': HexColor("#F8A44C"),
  },
  {
    'name':'Meat & Fish',
    'imageUrl':'https://s3-alpha-sig.figma.com/img/22d3/aac2/57974f1aad9e0ec045f5bfc22ef5a6ab?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=l1uWfgpsobAszKG5xvRnuBk09s-NttvWcjrPywFKpjtxTpsLwS41sIkgcixK-P8E8LyxafLqbRVUs97i5fQB~fGoEuiGAQQdSqshskeb-4g3ODrdz8RINVB~eQehsCZJYcMgfGLY6lcHmiUukflJdyjyC4gdOnVYTCPavHcNMra87WXeRQpleR-j6Y6RwfRaUDzlT49vW0ZRle7kHNvvRuZtodaRUIoj2DsGIzCNf66Dd9J9MuiLBy6W30NpR~tMceiOXAr3SWGikjgIyfyscFFtQIcdr6YD-1mGlVd57SptV~~18A50bGv912Qv9waOoyP~QRjkHAi6CxQoKW8flg__',
    'backgroundColor':HexColor("#F7A593"),
  },
  {
    'name':'Bakery & Snacks',
    'imageUrl':'https://s3-alpha-sig.figma.com/img/e2fa/ac00/a6029bf4a611c1016eaf4b8f75db6d65?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V2IPXq8sn8bJcEy7jIKAjlHEI5ss36YBbwpNshO6e1TF60OoTZI32ICzn~O83EoI6zIHQKZcoryo8DR-7zsVDnwT~teO2pszoiluLhFHvFQFU-zRpefm4~KUwjk~A362wbfYT7y2VqsWbypjfOGbjYp3aOZWr8Y19xt6odCDIXoGTu4pTrUU5Hdf2-aMJuduUfprBSVH8jXhMjIj0EOpnBDQMfLElEzmpRSy~VptJup0niDwbR1049wssj0kaZQCAEryDJv5TW66YcTtnAnAjbgSSmcgv1u-ooxkR45I4dKy7L4Q-hDZqmEdtzSBlYCHIijk6tWNiGPEsCE00dcs2Q__',
    'backgroundColor':HexColor("#D3B0E0"),
  },
];