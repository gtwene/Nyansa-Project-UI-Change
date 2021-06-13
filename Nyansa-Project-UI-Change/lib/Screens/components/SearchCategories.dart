import 'package:flutter/material.dart';

import 'CategoryButton.dart';

class SearchCategories extends StatelessWidget {
  final List<String> categories = [
    'Colors',
    'Animals',
    'Objects',
    'Dogs',
    'Bears',
    'Dogs',
  ];

  final List categoryImage = [
    'assets/images/Colors.png',
    'assets/images/Animals.png',
    'assets/images/Objects.png',
    'assets/images/Dogs.png',
    'assets/images/Bears.png',
    'assets/images/Dogs.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      child: Container(
        width: size.width,
        margin: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.75,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      height: size.height * 0.25,
                      image: AssetImage(
                        categoryImage[index],
                      ),
                    ),
                    Text(
                      '${categories[index]}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
