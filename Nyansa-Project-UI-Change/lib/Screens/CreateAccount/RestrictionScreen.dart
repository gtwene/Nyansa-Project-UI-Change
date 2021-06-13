import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/RestrictionItems.dart';
import '../components/SearchBox.dart';

import 'TimerScreen.dart';

class RestrictionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TimerScreen();
                },
              ),
            );
          },
          backgroundColor: Colors.cyan[200],
          label: Text(
            'Continue',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(physics: NeverScrollableScrollPhysics(), children: [
            Column(
              children: [
                Header(
                  label: 'Add reading restriction',
                ),
                SearchBox(),
                RestrictionItems(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
