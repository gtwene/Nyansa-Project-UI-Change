import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  final List categories = [
    'Animals',
    'Objects',
    'Dogs',
    'Cats',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      '${categories[index]}',
                    ),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.black,
                  padding: EdgeInsets.all(0),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.3,
                margin: EdgeInsets.only(bottom: 10.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/BookInfo');
                      },
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.75,
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.blue, Colors.blue[800]]),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  height: size.height * 0.15,
                                  width: size.width * 0.6,
                                  image: AssetImage(
                                    'assets/images/JP_title.png',
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10.0, bottom: 20),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/Read');
                                    },
                                    child: Text('Continue Reading'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: size.width * 0.4,
                              top: size.height * 0.02,
                              child: Image(
                                height: size.height * 0.25,
                                image: AssetImage(
                                  'assets/images/JP_bear.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
