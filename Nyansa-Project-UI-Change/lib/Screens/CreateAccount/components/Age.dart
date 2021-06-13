import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int _currentValue = 4;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () => setState(
            () {
              if (_currentValue > 4) {
                int newValue = _currentValue - 1;
                _currentValue = newValue.clamp(0, 12);
              } else {
                _currentValue = 4;
              }
            },
          ),
        ),
        NumberPicker(
          value: _currentValue,
          minValue: 4,
          maxValue: 12,
          haptics: true,
          axis: Axis.horizontal,
          itemWidth: 50,
          selectedTextStyle: TextStyle(
            color: Colors.cyan,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.cyan, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          onChanged: (value) => setState(() => _currentValue = value),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => setState(
            () {
              if (_currentValue <= 12) {
                int newValue = _currentValue + 1;
                _currentValue = newValue.clamp(0, 12);
              } else {
                _currentValue = 12;
              }
            },
          ),
        ),
      ],
    );
  }
}
