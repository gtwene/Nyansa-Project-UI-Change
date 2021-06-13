import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:animations/animations.dart';

import 'CategoryButton.dart';
import '../BookInfo.dart';

class RecommendedCarousel extends StatefulWidget {
  @override
  _RecommendedCarouselState createState() => _RecommendedCarouselState();
}

class _RecommendedCarouselState extends State<RecommendedCarousel> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(0),
      child: Row(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.cyan[200],
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(10.0)),
            ),
            child: IconButton(
                icon: Icon(Icons.arrow_left),
                color: Colors.cyan[800],
                onPressed: () {
                  _controller.previousPage();
                }),
          ),
          Expanded(
            child: Container(
              height: 300,
              width: size.width,
              margin: EdgeInsets.only(top: 10),
              child: CarouselSlider.builder(
                itemCount: 5,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  disableCenter: true,
                ),
                itemBuilder: (context, index, realIdx) {
                  return OpenContainer(
                    transitionDuration: Duration(milliseconds: 1500),
                    transitionType: ContainerTransitionType.fadeThrough,
                    openColor: Colors.transparent,
                    closedColor: Colors.transparent,
                    openBuilder: (context, closeContainer) {
                      return BookInfo();
                    },
                    closedBuilder: (context, openContainer) {
                      return GestureDetector(
                        onTap: openContainer,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10),
                                  ),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/Logo.png',
                                      ),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Title',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            height: 300,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: Colors.cyan[200],
              borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(10.0)),
            ),
            child: IconButton(
                icon: Icon(Icons.arrow_right),
                color: Colors.cyan[800],
                iconSize: 30.0,
                onPressed: () {
                  _controller.nextPage();
                }),
          ),
        ],
      ),
    );
  }
}
