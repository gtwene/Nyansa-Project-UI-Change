import 'package:flutter/material.dart';

import '../components/Header.dart';
import 'components/FinalAssets.dart';

class FinalCreateScreen extends StatefulWidget {
  @override
  _FinalCreateScreenState createState() => _FinalCreateScreenState();
}

class _FinalCreateScreenState extends State<FinalCreateScreen> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

  changeOpacity() {
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 1.0;
        changeOpacity();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(
              label: 'Finalize',
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                        opacity: opacity,
                        duration: Duration(milliseconds: 1500),
                        child: FinalizeAssets()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
