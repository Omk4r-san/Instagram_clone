import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';

class TextFormFieldHelper extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function validator;
  final TextInputType textInputType;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final Function suffixonPressed;
  final Function onSaved;
  final bool obscureText;
  final Function onChanged;
  const TextFormFieldHelper(
      {Key key,
      this.controller,
      this.hintText,
      this.validator,
      this.textInputType,
      this.prefixIconData,
      this.suffixIconData,
      this.suffixonPressed,
      this.obscureText,
      this.onSaved,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: validator,
        onSaved: onSaved,
        style: TextStyle(fontSize: 18, color: Colors.white),
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        decoration: inputDecoration.copyWith(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
        ));
  }
}

InputDecoration inputDecoration = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
  fillColor: ktextfieldColor,
  filled: true,
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: kbackgrounColor, width: 1.0),
    borderRadius: BorderRadius.circular(10.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kbackgrounColor, width: 0.0),
    borderRadius: BorderRadius.circular(10.0),
  ),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 1.0, color: Colors.red)),
);
