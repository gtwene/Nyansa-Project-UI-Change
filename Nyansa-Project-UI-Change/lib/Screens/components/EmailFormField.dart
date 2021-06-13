import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailFormField extends StatefulWidget {
  @override
  _EmailFormFieldState createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  bool _isValid = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
        ),
        labelText: 'Email',
        hintText: 'nyansa@nyansa.com',
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => {
        setState(() {
          _isValid = EmailValidator.validate(value);
        }),
      },
      validator: (value) => _isValid ? null : 'Enter a valid email',
    );
  }
}
