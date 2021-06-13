import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(fontSize: 20),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              onPressed: () {},
            ),
            border: InputBorder.none),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
