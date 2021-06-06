import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/screens/profile_screen.dart';
import 'package:sendry_app/views/widgets/textbutton_helper.dart';
import 'package:sendry_app/views/widgets/textfield_helper.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kbackgrounColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormFieldHelper(
                  hintText: "username",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormFieldHelper(
                  hintText: "password",
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?", style: subtitlelabelStyle)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButtonHelper(
                    text: "Log in",
                    buttonColor: kGreyColor,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Divider(
                height: 10,
                color: kGreyColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Dont have an account?',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kGreyColor)),
                      TextSpan(
                          text: ' Sign up.',
                          style: TextStyle(
                              color: kBlackColor, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
