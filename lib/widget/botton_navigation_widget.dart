import 'package:app_comic/page/comics_page.dart';
import 'package:app_comic/page/favorite_page.dart';
import 'package:app_comic/page/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final pages = [
    HomePage(),
    ComicsPage(),
    FavoritePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 5),
        height: 65,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0.5,
              blurRadius: 12,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_rounded,
              ),
              label: "Comics",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outlined,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
