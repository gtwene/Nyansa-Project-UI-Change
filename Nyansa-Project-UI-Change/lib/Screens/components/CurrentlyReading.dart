import 'package:flutter/material.dart';

class CurrentlyReading extends StatelessWidget {
  final List images = [
    'assets/images/CW.png',
    'assets/images/DOAWP.png',
  ];
  final List titles = [
    'Charlotte\'s Web',
    'Diary Of A Wimpy Kid',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/BookInfo');
              },
              child: Container(
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: size.height * 0.3,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: size.height * 0.35,
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.black87,
                                ]),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: size.width * 0.3,
                            child: Text(
                              '${titles[index]}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            );
          }),
    );
  }
}
