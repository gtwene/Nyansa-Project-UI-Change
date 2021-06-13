import 'package:flutter/material.dart';
import '../components/Header.dart';
import 'components/FormInput.dart';
import '../components/roundedButton.dart';

import 'AgeScreen.dart';

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Header(
            label: 'What is your child\'s name ?',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: FormInput(
                    icon: Icon(Icons.face),
                    labelText: 'Child\'s Name',
                    hintText: 'Nyansa',
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your child\'s name';
                      } else if (value.length < 2) {
                        return 'Child\'s name cannot be less than 2 letters';
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: RoundedButton(
                    text: 'Continue',
                    primary: Colors.cyan[200],
                    onPrimary: Colors.cyan[800],
                    fontSize: 18,
                    press: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return AgeScreen();
                          }),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
