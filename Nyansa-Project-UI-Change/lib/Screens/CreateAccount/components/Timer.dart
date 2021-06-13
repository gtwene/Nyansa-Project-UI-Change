import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  int _currentTime = 40;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.cyan[200]),
            child: IconButton(
              icon: Icon(
                Icons.arrow_drop_up,
                color: Colors.cyan[800],
              ),
              iconSize: 50,
              onPressed: () {
                setState(() {
                  final newValue = _currentTime - 1;
                  _currentTime = newValue.clamp(0, 60);
                });
              },
            ),
          ),
          NumberPicker(
            value: _currentTime,
            minValue: 0,
            maxValue: 60,
            onChanged: (value) => setState(() => _currentTime = value),
            selectedTextStyle: TextStyle(
              color: Colors.cyan,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
            itemWidth: 80,
            itemCount: 3,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.cyan, width: 2),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Text('Current Time: $_currentTime'),
          ),
          Container(
            alignment: Alignment.center,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.cyan[200]),
            child: IconButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.cyan[800],
              ),
              iconSize: 50,
              alignment: Alignment.center,
              onPressed: () {
                setState(() {
                  final newValue = _currentTime + 1;
                  _currentTime = newValue.clamp(0, 60);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
