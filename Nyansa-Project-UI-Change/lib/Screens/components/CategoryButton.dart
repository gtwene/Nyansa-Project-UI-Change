import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final Color background;
  final double fontSize;
  final Function press;

  const CategoryButton({
    Key key,
    this.label,
    this.background,
    this.fontSize,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: ElevatedButton(
        child: Text(label),
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: background,
          onPrimary: Colors.white,
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
