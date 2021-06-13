import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color primary, onPrimary;
  final Function press;
  final double fontSize;

  const RoundedButton({
    Key key,
    this.text,
    this.primary,
    this.onPrimary,
    this.press,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      child: ElevatedButton(
        onPressed: press,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: primary,
          onPrimary: onPrimary,
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }
}
