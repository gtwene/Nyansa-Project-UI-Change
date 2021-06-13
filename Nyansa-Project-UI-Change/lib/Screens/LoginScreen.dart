import 'package:flutter/material.dart';

import 'components/Header.dart';
import 'components/roundedButton.dart';
import 'components/EmailFormField.dart';
import 'components/PasswordFormField.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Container(
            child: Column(
              children: [
                Header(
                  label: 'Login',
                ),
                Expanded(
                  child: Container(
                    height: size.height,
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Logo.png',
                                width: size.height / 3,
                                height: size.height / 3,
                                alignment: Alignment.center,
                              ),
                              Container(
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      EmailFormField(),
                                      PasswordFormField(
                                        validate: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter a password';
                                          } else if (value.length < 6) {
                                            return 'Password cannot be less than 6 letters';
                                          }
                                        },
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 25.0),
                                        child: RoundedButton(
                                          text: 'Login',
                                          fontSize: 18,
                                          primary: Colors.cyan,
                                          onPrimary: Colors.white,
                                          press: () {
                                            if (_formKey.currentState
                                                .validate()) {
                                              Navigator.pushNamed(
                                                context,
                                                '/NavBar',
                                              );
                                            }
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
