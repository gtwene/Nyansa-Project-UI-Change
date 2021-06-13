import 'package:flutter/material.dart';

class SelectedItem extends StatefulWidget {
  final String text;

  const SelectedItem({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  _SelectedItemState createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  bool _selected = false;
  void selected() {
    setState(() {
      _selected = !_selected;
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
              primary: _selected ? Colors.cyan : Colors.grey[400],
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.35, vertical: 15),
              textStyle: TextStyle(fontSize: 16),
            ),
            onPressed: selected,
          ),
        ],
      ),
    );
  }
}
