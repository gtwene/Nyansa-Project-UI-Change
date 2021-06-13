import 'package:flutter/material.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({
    Key key,
    @required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  _ReadingPageState createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  final String value =
      'Blandit mauris, leo venenatis tempus. Etiam sit turpis ultricies posuere non gravida ut egestas. Nibh lacus interdum vitae lorem vitae purus nunc fames potenti. Volutpat egestas felis, ac nec rhoncus. Mi, metus urna magna tincidunt praesent cras eu lectus ut. Nulla sem viverra sed sit fermentum morbi sed. ';

  bool _visible = true;

  void _isVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            _isVisible();
          },
          child: Container(
            height: size.height,
            width: size.width,
            child: Positioned(
              child: Image.asset(
                'assets/images/JP_background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.05,
          right: 40,
          child: Container(
              width: size.width * 0.5,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SelectableText(
                value,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                onTap: () {
                  return Dialog(
                    backgroundColor: Colors.white30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Word',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            Icon(Icons.volume_up_rounded, color: Colors.white)
                          ],
                        )
                      ]),
                    ),
                  );
                },
              )),
        ),
        Positioned(
          right: 20,
          top: size.height * 0.8,
          child: Visibility(
            visible: _visible,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.music_note_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_circle_sharp),
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                    iconSize: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: size.width * 0.85,
          child: GestureDetector(
            onTap: () {
              widget._controller.nextPage(
                  duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            },
            child: Container(
              height: size.height,
              width: size.width * 0.15,
              color: Colors.transparent,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            widget._controller.previousPage(
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          },
          child: Container(
            height: size.height,
            width: size.width * 0.15,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
