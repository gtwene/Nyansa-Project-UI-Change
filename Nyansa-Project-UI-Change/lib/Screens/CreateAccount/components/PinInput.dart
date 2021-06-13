import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../ConfirmPin.dart';

class PinInput extends StatefulWidget {
  @override
  _PinInputState createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  final _formKey = GlobalKey<FormState>();
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final BoxDecoration pinPutDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.cyan[200],
          width: 2,
        ));
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PinPut(
            validator: (s) {
              if (s.isEmpty) {
                return 'Enter a pin';
              } else if (s.length < 4) {
                return 'Enter a valid pin';
              }
              return null;
            },
            useNativeKeyboard: false,
            //autovalidateMode: AutovalidateMode.onUserInteraction,
            withCursor: true,
            fieldsCount: 4,
            obscureText: '●',
            fieldsAlignment: MainAxisAlignment.spaceEvenly,
            textStyle: TextStyle(fontSize: 20.0, color: Colors.black),
            eachFieldMargin: EdgeInsets.symmetric(vertical: 10),
            eachFieldAlignment: Alignment.center,
            eachFieldWidth: 40.0,
            eachFieldHeight: 40.0,
            focusNode: _pinPutFocusNode,
            controller: _pinPutController,
            submittedFieldDecoration: pinPutDecoration,
            followingFieldDecoration: pinPutDecoration,
            pinAnimationType: PinAnimationType.scale,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Enter A Pin',
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
            physics: NeverScrollableScrollPhysics(),
            children: [
              ...[1, 2, 3, 4, 5, 6, 7, 8, 9].map((e) {
                return RoundedButton(
                  title: '$e',
                  onTap: () {
                    _pinPutController.text = '${_pinPutController.text}$e';
                  },
                );
              }),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan[200],
                ),
                child: IconButton(
                  icon: Icon(Icons.backspace_outlined),
                  color: Colors.cyan[800],
                  onPressed: () {
                    if (_pinPutController.text.isNotEmpty) {
                      _pinPutController.text = _pinPutController.text
                          .substring(0, _pinPutController.text.length - 1);
                    }
                  },
                ),
              ),
              RoundedButton(
                title: '0',
                onTap: () {
                  _pinPutController.text = '${_pinPutController.text}0';
                },
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan[200],
                ),
                child: IconButton(
                  icon: Icon(Icons.check_rounded),
                  color: Colors.cyan[800],
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ConfirmPin();
                        }),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  RoundedButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.cyan[200],
        ),
        alignment: Alignment.center,
        child: Text(
          '$title',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.cyan[800],
          ),
        ),
      ),
    );
  }
}
