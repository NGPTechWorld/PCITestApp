import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    StorePage(),
    CategoriesPage(),
    CartPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/your_svg_file.svg', // استبدل بمسار ملف SVG الخاص بك
              width: 30,
              height: 30,
            ),
            SizedBox(width: 5),
            Text('My Store'),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "src/store.svg",
              width: 24,
              height: 24,
            ),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'src/explore.svg', // استبدل بمسار ملف SVG لأيقونة الـ Categories
              width: 24,
              height: 24,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'src/cart.svg', // استبدل بمسار ملف SVG لأيقونة الـ Cart
              width: 24,
              height: 24,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'src/fav.svg', // استبدل بمسار ملف SVG لأيقونة الـ Favorites
              width: 24,
              height: 24,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "src/profile.svg", // استبدل بمسار ملف SVG لأيقونة الـ Profile
              width: 24,
              height: 24,
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

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Categories Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cart Page',
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
