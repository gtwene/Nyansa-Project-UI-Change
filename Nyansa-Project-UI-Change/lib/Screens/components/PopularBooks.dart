import 'package:flutter/material.dart';
import 'CategoryButton.dart';

class PopularBooks extends StatelessWidget {
  const PopularBooks({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 925,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(
                parent: NeverScrollableScrollPhysics(),
              ),
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/BookInfo');
                  },
                  child: Container(
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
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'More',
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 25,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
                onPrimary: Colors.white,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
