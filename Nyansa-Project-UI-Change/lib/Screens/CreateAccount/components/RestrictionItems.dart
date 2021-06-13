import 'package:flutter/material.dart';

class RestrictionItems extends StatefulWidget {
  const RestrictionItems({
    Key key,
  }) : super(key: key);

  @override
  _RestrictionItemsState createState() => _RestrictionItemsState();
}

class _RestrictionItemsState extends State<RestrictionItems> {
  final List<String> restrictions = <String>[
    'LGBT+',
    'Islam',
    'Christianity',
    'War',
    'Religion',
    'Beginner Books',
    'Intermediate Books',
    'Advanced Books',
  ];

  List<String> selectedRestriction = <String>[];

  ScrollController _scrollController = ScrollController();

  bool isCheck = false;
  void _selected(bool value, int index) {
    setState(() {
      if (!selectedRestriction.contains(restrictions[index])) {
        selectedRestriction.add(restrictions[index]);
        isCheck = value;
      } else if (selectedRestriction.contains(restrictions[index])) {
        selectedRestriction.remove(restrictions[index]);
        isCheck = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ElevatedButton(
          child: Text('Reset'),
          style: ElevatedButton.styleFrom(
            primary: Colors.cyan[500],
            onPrimary: Colors.white,
          ),
          onPressed: () {
            setState(() {
              selectedRestriction.clear();
            });
          },
        ),
        Container(
          height: size.height * 0.7,
          padding: EdgeInsets.fromLTRB(
            15,
            0,
            15,
            size.width * 0.2,
          ),
          child: Scrollbar(
            isAlwaysShown: true,
            interactive: true,
            thickness: 8.0,
            radius: Radius.circular(10.0),
            controller: _scrollController,
            child: ListView.builder(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                itemCount: restrictions.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                      value: selectedRestriction.contains(restrictions[index]),
                      title: Text(
                        '${restrictions[index]}',
                        style: selectedRestriction.contains(restrictions[index])
                            ? TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.5,
                              )
                            : null,
                      ),
                      activeColor: Colors.red,
                      onChanged: (value) {
                        _selected(value, index);
                      });
                }),
          ),
        ),
      ],
    );
  }
}
