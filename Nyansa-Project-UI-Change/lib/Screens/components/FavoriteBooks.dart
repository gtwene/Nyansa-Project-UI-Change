import 'package:flutter/material.dart';

import 'CategoryButton.dart';

class FavoriteBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: size.height,
        width: size.width,
        margin: EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    height: 175,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Logo.png',
                          ),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // width: size.width * 0.54,
                      height: 175,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Author',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              CategoryButton(
                                label: 'Action',
                                background: Colors.red[400],
                                fontSize: 13,
                                press: () {},
                              ),
                              CategoryButton(
                                label: 'Fantasy',
                                background: Colors.purple[300],
                                fontSize: 13,
                                press: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
