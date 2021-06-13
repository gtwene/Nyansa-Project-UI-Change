import 'package:flutter/material.dart';

import 'roundedButton.dart';
import 'outlinedButton.dart';
import 'WelcomeText.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/NyansaLogo.png',
                      width: size.width * 0.5,
                      height: size.height * 0.5,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Column(
                              children: [
                                WelcomeText(
                                  text: 'Create an account your child',
                                  fontsize: 19.0,
                                  weight: FontWeight.bold,
                                ),
                                WelcomeText(
                                  text:
                                      'Only guardians can create an account for a child',
                                  fontsize: 13.0,
                                  weight: FontWeight.w300,
                                ),
                              ],
                            ),
                          ),
                          RoundedButton(
                            text: 'Create an account',
                            primary: Colors.cyan,
                            onPrimary: Colors.white,
                            fontSize: 18.0,
                            press: () {
                              Navigator.pushNamed(
                                context,
                                '/Create',
                              );
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: RoundedOutlineButton(
                              text: 'Login',
                              primary: Colors.cyan,
                              borderColor: Colors.cyan,
                              fontSize: 18.0,
                              press: () {
                                Navigator.pushNamed(
                                  context,
                                  '/Login',
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
