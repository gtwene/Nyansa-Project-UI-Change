import 'package:flutter/material.dart';

import 'components/FavoriteBooks.dart';
import 'components/SearchBox.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Favorites',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              SearchBox(),
              FavoriteBooks(),
            ],
          ),
        ),
      ),
    );
  }
}
