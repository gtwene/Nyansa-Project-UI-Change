import 'package:flutter/material.dart';

import 'components/ParentalPinInput.dart';

class ParentalLock extends StatefulWidget {
  @override
  _ParentalLockState createState() => _ParentalLockState();
}

class _ParentalLockState extends State<ParentalLock> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                'Enter Parental Lock Pin',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 30,
                ),
                child: ParentalPinInput(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
