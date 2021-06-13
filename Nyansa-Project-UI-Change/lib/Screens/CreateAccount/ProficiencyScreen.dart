import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/ProficiencyList.dart';

import 'RestrictionScreen.dart';
import 'ProficiencyExp.dart';

class ProficiencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RestrictionScreen();
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
        body: Container(
            height: size.height,
            child: Column(
              children: [
                Header(
                  label: 'Set child\'s reading proficiency',
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.25,
                          vertical: 10,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProficiencyExplanation();
                                  },
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.help_outline),
                                Text(
                                    'Get help understanding \nchild\'s proficiency level')
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black,
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                              padding: EdgeInsets.all(10.0),
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          'Set your child\s reading level',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Proficiency(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
