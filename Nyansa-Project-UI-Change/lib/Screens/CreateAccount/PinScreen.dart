import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/PinInput.dart';

class PinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Header(label: 'Enter parental lock code'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: PinInput(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
