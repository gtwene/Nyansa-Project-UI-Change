import 'package:flutter/material.dart';
import 'CategoryButton.dart';

class Categories extends StatelessWidget {
  final List<String> categories = [
    'Action',
    'Adventure',
    'Folk Tales',
    'Fantasy',
    'Picture books',
    'More'
  ];

  final List<Color> categoryColor = [
    Colors.red[400],
    Colors.blue[500],
    Colors.brown[400],
    Colors.purple[300],
    Colors.orange[200],
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2.75,
      width: size.width,
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2.5,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            child: CategoryButton(
              label: '${categories[index]}',
              background: categoryColor[index],
              fontSize: 16,
              press: () {
                if (categories[index].contains('More')) {
                } else {}
              },
            ),
          );
        },
      ),
    );
  }
}
