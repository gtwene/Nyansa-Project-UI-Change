import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/DropDown.dart';

class ProficiencyExplanation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Header(
              label: 'Proficiency help',
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Scrollbar(
                  interactive: true,
                  child: ListView(physics: BouncingScrollPhysics(), children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0,
                        bottom: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width,
                            margin: EdgeInsets.only(bottom: 15.0),
                            padding: EdgeInsets.only(bottom: 5.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(color: Colors.black, width: 2.0),
                              ),
                            ),
                            child: Text(
                              'How is the proficiency level calculated ?',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            'Proficiency levels are calculated based on your child\'s age as well as the selected proficiency level (beginner, intermediate or advanced)',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0,
                        bottom: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Proficiency Levels',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          DropDown(
                            label: 'Beginner',
                            subtext:
                                'Blandit mauris, leo venenatis tempus. Etiam sit turpis ultricies posuere non gravida ut egestas. Nibh lacus interdum vitae lorem vitae purus nunc fames potenti. Volutpat egestas felis, ac nec rhoncus. Mi, metus urna magna tincidunt praesent cras eu lectus ut. Nulla sem viverra sed sit fermentum morbi sed. ',
                          ),
                          DropDown(
                            label: 'Intermediate',
                            subtext:
                                'Blandit mauris, leo venenatis tempus. Etiam sit turpis ultricies posuere non gravida ut egestas. Nibh lacus interdum vitae lorem vitae purus nunc fames potenti. Volutpat egestas felis, ac nec rhoncus. Mi, metus urna magna tincidunt praesent cras eu lectus ut. Nulla sem viverra sed sit fermentum morbi sed. ',
                          ),
                          DropDown(
                            label: 'Advanced',
                            subtext:
                                'Blandit mauris, leo venenatis tempus. Etiam sit turpis ultricies posuere non gravida ut egestas. Nibh lacus interdum vitae lorem vitae purus nunc fames potenti. Volutpat egestas felis, ac nec rhoncus. Mi, metus urna magna tincidunt praesent cras eu lectus ut. Nulla sem viverra sed sit fermentum morbi sed. ',
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
