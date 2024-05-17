import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pcitest/CartUI.dart';
import 'package:pcitest/Explore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  List<bool> _selected = [false, true, false, false, false];

  static List<Widget> _widgetOptions = <Widget>[
    StorePage(),
    Explore(),
    CartUI(),
    FavoritesPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selected = List.generate(5, (i) => i == index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "src/shop.svg",
              width: 24,
              height: 24,
              color:_selected[0] ? HexColor("#53B175") : Colors.black,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'src/explore.svg',
              width: 24,
              height: 24,
              color:_selected[1] ? HexColor("#53B175") : Colors.black,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'src/cart.svg',
              width: 24,
              height: 24,
              color:_selected[2] ? HexColor("#53B175") : Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'src/fav.svg',
              width: 24,
              height: 24,
              color:_selected[3] ? HexColor("#53B175") : Colors.black,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "src/profile.svg",
              width: 24,
              height: 24,
              color:_selected[4] ? HexColor("#53B175") : Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: HexColor("#53B175"),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Store Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}


class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorites Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
