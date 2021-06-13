import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final String labelText;
  final Icon icon, suffixIcon;
  final String hintText;
  final Function validate;

  const FormInput({
    Key key,
    this.hintText,
    this.icon,
    this.labelText,
    this.validate,
    this.suffixIcon,
  }) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: widget.icon,
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
      ),
      autofocus: false,
      validator: widget.validate,
    );
  }
}
