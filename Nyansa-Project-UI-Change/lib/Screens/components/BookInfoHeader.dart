import 'package:flutter/material.dart';

class BookInfoHeader extends StatelessWidget {
  const BookInfoHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      color: Colors.grey[300],
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Book Title \n',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Author',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ]),
        Container(
          height: size.height * 0.3,
          width: size.width * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Logo.png',
                ),
                fit: BoxFit.contain),
          ),
        )
      ]),
    );
  }
}
