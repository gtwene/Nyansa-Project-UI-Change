import 'package:flutter/material.dart';

import 'components/Header.dart';
import 'components/ChapterList.dart';

class ContentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Header(label: 'Chapters'),
            ChapterList(),
          ],
        ),
      ),
    );
  }
}
