import 'package:flutter/material.dart';

import 'components/HomeHeader.dart';
import 'components/SearchBar.dart';
import 'components/CurrentlyReading.dart';
import 'components/HomeCategories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              HomeHeader(),
              SearchBar(),
              CurrentlyReading(),
              HomeCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
