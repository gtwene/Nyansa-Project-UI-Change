import 'package:flutter/material.dart';

class RoundedOutlineButton extends StatelessWidget {
  final String text;
  final Color primary, borderColor;
  final Function press;
  final double fontSize;

  const RoundedOutlineButton({
    Key key,
    this.text,
    this.primary,
    this.borderColor,
    this.press,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      child: OutlinedButton(
        onPressed: press,
        child: Text(text),
        style: OutlinedButton.styleFrom(
          primary: primary,
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
          side: BorderSide(
            color: borderColor,
            width: 2,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
