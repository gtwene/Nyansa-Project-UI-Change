import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: 'By tapping continue you accept our',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: ' terms and conditions',
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print('terms and conditions')),
            TextSpan(text: ' and', style: TextStyle(color: Colors.black)),
            TextSpan(
                text: ' privacy policy',
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print('privacy policy')),
          ],
        ),
      ),
    );
  }
}
