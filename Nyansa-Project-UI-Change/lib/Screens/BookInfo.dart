import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/Header.dart';
import 'components/BookInfoHeader.dart';
import 'components/CategoryButton.dart';
import 'components/AuthorBooks.dart';
import 'components/SimilarBooks.dart';

class BookInfo extends StatefulWidget {
  @override
  _BookInfoState createState() => _BookInfoState();
}

class _BookInfoState extends State<BookInfo> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/Read');
          },
          backgroundColor: Colors.cyan,
          label: Text(
            'Read',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          icon: Icon(Icons.menu_book_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [
            Header(
              label: 'Go Back',
            ),
            Expanded(
              child: ListView(
                children: [
                  BookInfoHeader(size: size),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About this book',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Libero vulputate risus, adipiscing eget at egestas pellentesque et. Pharetra blandit mollis proin pulvinar sed feugiat et. Congue lobortis pretium, facilisis vestibulum euismod ipsum faucibus. Scelerisque aliquam senectus diam vulputate ullamcorper felis elementum, tellus.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.2,
                          ),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Contents');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Chapters',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_right, size: 25)
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black,
                              shadowColor: Colors.transparent,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.2, vertical: 5),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Container(
                          child: Row(children: [
                            Text('Tags: ', style: TextStyle(fontSize: 16)),
                            Row(
                              children: [
                                CategoryButton(
                                  label: 'Action',
                                  background: Colors.red[400],
                                  fontSize: 13,
                                  press: () {},
                                ),
                                CategoryButton(
                                  label: 'Fantasy',
                                  background: Colors.purple[300],
                                  fontSize: 13,
                                  press: () {},
                                ),
                              ],
                            ),
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.2, vertical: 5),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Books by this Author',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_right, size: 25)
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.black,
                                    shadowColor: Colors.transparent,
                                    padding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              AuthorBooks(),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.2, vertical: 5),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Similar Books',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_right, size: 25)
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.black,
                                    shadowColor: Colors.transparent,
                                    padding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                              SimilarBooks(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
