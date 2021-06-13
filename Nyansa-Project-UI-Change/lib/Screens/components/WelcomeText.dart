import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final num fontsize;

  const WelcomeText({
    Key key,
    this.text,
    this.weight,
    this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: weight,
          color: Colors.black,
        ),
      ),
    );
  }
}
