import 'package:flutter/material.dart';

class AuthorBooks extends StatelessWidget {
  const AuthorBooks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        bottom: 5,
      ),
      child: Container(
        height: 200,
        width: size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          // physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 5,
                    ),
                    height: 160,
                    width: 120,
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
                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
