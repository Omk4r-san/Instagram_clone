import 'package:flutter/material.dart';

import 'package:sendry_app/constants/colors.dart';

class TextButtonHelper extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color buttonColor;

  const TextButtonHelper({Key key, this.text, this.onPressed, this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(10)),
        height: MediaQuery.of(context).size.height * 0.065,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
