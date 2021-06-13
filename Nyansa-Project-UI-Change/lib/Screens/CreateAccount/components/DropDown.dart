import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final String label, subtext;
  const DropDown({
    Key key,
    this.label,
    this.subtext,
  }) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int selectedIndex;
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 5.0),
            decoration: _selected
                ? BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2.0),
                    ),
                  )
                : null,
            child: TextButton(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.label),
                    Icon(_selected
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_right),
                  ]),
              onPressed: () {
                setState(() {
                  _selected = !_selected;
                });
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(0),
                primary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Visibility(
              visible: _selected,
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(widget.subtext),
              )),
        ],
      ),
    );
  }
}
