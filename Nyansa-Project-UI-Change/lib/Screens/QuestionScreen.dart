import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    Key key,
    @required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  // @override
  // dispose() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitDown,
  //     DeviceOrientation.portraitUp,
  //   ]);
  //   super.dispose();
  // }

  List<String> answers = <String>['Papa Bear', 'Mama Bear', 'The Boy'];

  List<String> correctAnswer = <String>[];
  bool isCheck = false;
  void _selected(bool value, int index) {
    setState(() {
      if (answers.contains('Papa Bear')) {
        correctAnswer.add(answers[index]);
        isCheck = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: Positioned(
                child: Image.asset(
                  'assets/images/JP_background.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    widget._controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn);
                  },
                  child: Row(
                    children: [
                      Text('Skip'),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                    onPrimary: Colors.white,
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        letterSpacing: 2.0),
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.25,
              left: 10,
              child: Container(
                width: size.width * 0.45,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Blandit mauris, leo venenatis tempus. Etiam sit turpis ultricies posuere non gravida ut egestas.',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.25,
              right: 40,
              child: Container(
                height: size.height * 0.65,
                width: size.width * 0.45,
                padding: EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: answers.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                      // value: correctAnswer.contains(answers[index]),
                      onPressed: () {},
                      child: Text(
                        '${answers[index]}',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white54,
                        onPrimary: Colors.white,
                        textStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
