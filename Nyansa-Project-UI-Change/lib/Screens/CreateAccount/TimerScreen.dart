import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/Timer.dart';

import 'PinScreen.dart';

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PinScreen();
            }));
          },
          backgroundColor: Colors.cyan[200],
          label: Text(
            'Continue',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Header(
                label: 'Set daily reading limit',
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Timer(),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                          size.width * 0.15,
                          20,
                          size.width * 0.15,
                          0,
                        ),
                        child: Text(
                          'Research has shown that the average reading time for children is 40 minutes',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
