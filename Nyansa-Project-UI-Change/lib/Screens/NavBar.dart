import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// import 'HomeScreen.dart';

import 'HomePage.dart';
import 'FavoritesScreen.dart';
// import 'ProfileScreen.dart';
import 'ParentalLock.dart';
import 'SearchScreen.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  List pages = [
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
    // ProfileScreen()
    ParentalLock(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              activeIcon: Icon(
                Icons.search_rounded,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded),
              activeIcon: Icon(
                Icons.favorite_rounded,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face_outlined),
              activeIcon: Icon(
                Icons.face,
              ),
              label: 'Profile',
            ),
          ],
          selectedIconTheme: IconThemeData(
            size: 50,
            color: Colors.black,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          selectedItemColor: Colors.black,
          onTap: onTappedBar,
        ),
        body: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
          child: pages[_selectedIndex],
        ));
  }
}
