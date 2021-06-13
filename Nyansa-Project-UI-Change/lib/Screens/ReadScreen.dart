import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ReadingPage.dart';
import 'QuestionScreen.dart';
import 'CompletedPage.dart';

class ReadingScreen extends StatefulWidget {
  @override
  _ReadingScreenState createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  bool _visible = true;

  void _isVisible() {
    setState(() {
      _visible = !_visible;
    });
  }

  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          _isVisible();
        },
        child: Scaffold(
          floatingActionButton: Visibility(
            visible: _visible,
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: FloatingActionButton.extended(
                label: Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                backgroundColor: Colors.black54,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          body: Container(
            height: size.height,
            width: size.width,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                ReadingPage(
                  controller: _controller,
                ),
                QuestionScreen(
                  controller: _controller,
                ),
                CompletedPage(
                  controller: _controller,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
