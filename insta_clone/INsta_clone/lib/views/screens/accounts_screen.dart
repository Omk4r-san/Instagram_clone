import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/screens/login_screen.dart';
import 'package:sendry_app/views/widgets/textbutton_helper.dart';

class AccountsScreen extends StatefulWidget {
  AccountsScreen({Key key}) : super(key: key);

  @override
  _AccountsScreenState createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgrounColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextButtonHelper(
              text: "Log in",
              buttonColor: kBlackColor,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ),
          Text("Switch accounts",
              style: titlelabelStyle.copyWith(fontSize: 20)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
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
    );
  }
}
