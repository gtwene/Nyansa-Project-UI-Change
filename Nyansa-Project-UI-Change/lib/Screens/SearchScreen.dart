import 'package:flutter/material.dart';

import 'components/Header.dart';
import 'components/SearchBar.dart';
import 'components/SearchCategories.dart';

class SearchScreen extends StatelessWidget {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.mic),
          backgroundColor: Colors.cyan,
          onPressed: () {
            _controller.nextPage(
                duration: Duration(seconds: 1), curve: Curves.easeIn);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Column(
            children: [
              Header(
                label: 'Search',
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan, width: 2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Look for books',
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search_rounded),
                        onPressed: () {},
                      ),
                      border: InputBorder.none,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              // Container(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text('Say Something'),
              //       Icon(Icons.multitrack_audio_rounded, size: 50),
              //     ],
              //   ),
              // ),
              SearchCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
