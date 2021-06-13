import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/ProfileButton.dart';
import 'components/Header.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Header(label: 'Profile'),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nyansa',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: size.width * 0.4),
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Points: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Earn points by reading',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ProfileButton(
                        label: 'Reading Settings',
                        icon: Icon(Icons.menu_book_rounded),
                        press: () {},
                      ),
                      ProfileButton(
                        label: 'Account Settings',
                        icon: Icon(Icons.face_outlined),
                        press: () {},
                      ),
                      ProfileButton(
                        label: 'Notification Settings',
                        icon: Icon(Icons.notifications_none_rounded),
                        press: () {},
                      ),
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.1),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/Headphone_mic.png'),
                                height: 50,
                                width: 50,
                                color: Colors.cyan[800],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: size.width * 0.1),
                                child: Text('How can we help?',
                                    style: TextStyle(fontSize: 20)),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.cyan[100],
                            onPrimary: Colors.cyan[800],
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Privacy Policy'),
                      Text('Terms and conditions')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
