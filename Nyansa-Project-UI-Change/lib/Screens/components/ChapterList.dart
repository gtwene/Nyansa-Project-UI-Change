import 'package:flutter/material.dart';

class ChapterList extends StatelessWidget {
  final List chapters = [
    'Chapter 1',
    'Chapter 2',
    'Chapter 3',
    'Chapter 4',
    'Chapter 5',
    'Chapter 6',
    'Chapter 7'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: chapters.length,
        separatorBuilder: (context, index) => Divider(
          thickness: 2.0,
          height: 10.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Read');
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      '${chapters.indexOf(chapters[index]) + 1}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Text(
                    '${chapters[index]}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
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
