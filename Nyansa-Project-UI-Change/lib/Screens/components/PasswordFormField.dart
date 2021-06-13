import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final Function validate;
  const PasswordFormField({
    Key key,
    this.validate,
  }) : super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  void _visible() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          labelText: 'Password',
          hintText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              _visible();
            },
          ),
        ),
        obscureText: _obscureText,
        validator: widget.validate,
      ),
    );
  }
}
