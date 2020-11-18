import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
    this.text, {
    this.autofocus = false,
    Key key,
    this.validator,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);
  final bool autofocus;
  final Function validator;
  final String text;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      keyboardType: keyboardType,
      validator: (value) => validator(value),
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          hintText: text,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
  }
}
