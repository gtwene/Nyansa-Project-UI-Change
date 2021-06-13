import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/WelcomeScreen.dart';
import 'Screens/CreateAccount/CreateScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/NavBar.dart';
import 'Screens/HomePage.dart';
import 'Screens/FavoritesScreen.dart';
import 'Screens/SearchScreen.dart';
import 'Screens/ProfileScreen.dart';
import 'Screens/BookInfo.dart';
import 'Screens/ContentsScreen.dart';
import 'Screens/ParentalLock.dart';
import 'Screens/EditProfile.dart';
import 'Screens/ReadScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.grey[200],
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nyansa App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primaryColor: Colors.cyan,
        shadowColor: Colors.transparent,
      ),
      home: WelcomeScreen(),
      routes: {
        '/Login': (context) => LoginScreen(),
        '/Create': (context) => CreateScreen(),
        '/NavBar': (context) => BottomTab(),
        '/Home': (context) => HomeScreen(),
        '/Favorites': (context) => FavoritesScreen(),
        '/Search': (context) => SearchScreen(),
        '/ParentalLock': (context) => ParentalLock(),
        '/Profile': (context) => ProfileScreen(),
        '/BookInfo': (context) => BookInfo(),
        '/Contents': (context) => ContentsScreen(),
        '/EditProfile': (context) => EditProfile(),
        '/Read': (context) => ReadingScreen(),
      },
    );
  }
}
