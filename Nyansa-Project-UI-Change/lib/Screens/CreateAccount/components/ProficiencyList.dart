import 'package:flutter/material.dart';

class Proficiency extends StatefulWidget {
  const Proficiency({
    Key key,
  }) : super(key: key);

  @override
  _ProficiencyState createState() => _ProficiencyState();
}

class _ProficiencyState extends State<Proficiency> {
  final List<String> proficiencies = <String>[
    'Beginner',
    'Intermediate',
    'Advanced'
  ];

  final List<String> subtext = <String>[
    'Recommended for children now learning to read',
    'Recommeded for children who find it difficult to read',
    'Recommended for children proficient in reading',
  ];

  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      width: 500,
      padding: EdgeInsets.fromLTRB(
        size.width * 0.1,
        0,
        size.width * 0.1,
        0,
      ),
      child: ListView.builder(
        itemCount: proficiencies.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.9,
                    child: ListTile(
                      title: Center(
                        child: Text('${proficiencies[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            )),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      tileColor: selectedIndex == index
                          ? Colors.cyan[500]
                          : Colors.grey[500],
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                          // _show = !_show;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Visibility(
                      visible: selectedIndex == index ? true : false,
                      child: Text(
                        '${subtext[index]}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
