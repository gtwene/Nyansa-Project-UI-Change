import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/Age.dart';
import '../components/roundedButton.dart';

import 'ProficiencyScreen.dart';

class AgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Header(
              label: 'What is your child\s age',
            ),
            Expanded(
              child: Container(
                height: size.height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Age(),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: RoundedButton(
                            text: 'Continue',
                            primary: Colors.cyan[200],
                            onPrimary: Colors.cyan[800],
                            fontSize: 18,
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ProficiencyScreen();
                                }),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
