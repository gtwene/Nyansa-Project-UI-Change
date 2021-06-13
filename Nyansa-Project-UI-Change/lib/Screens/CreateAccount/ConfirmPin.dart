import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/ConfirmPinInput.dart';

class ConfirmPin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Header(label: 'Go Back'),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ConfirmPinInput(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
