import 'package:flutter/material.dart';

class SelectedItem extends StatefulWidget {
  final String text;
  final String subtext;

  const SelectedItem({
    Key key,
    this.text,
    this.subtext,
  }) : super(key: key);
  @override
  _SelectedItemState createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  bool _show = false;
  void showText() {
    setState(() {
      _show = !_show;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            child: Text(widget.text),
            style: ElevatedButton.styleFrom(
              primary: _show ? Colors.cyan : Colors.grey[400],
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.35, vertical: 15),
              textStyle: TextStyle(fontSize: 16),
            ),
            onPressed: showText,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Visibility(
              visible: _show,
              child: Text(
                widget.subtext,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
