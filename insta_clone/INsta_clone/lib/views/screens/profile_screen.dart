import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/widgets/bottomnavigation_bar.dart';
import 'package:sendry_app/views/widgets/drawer_menu.dart';
import 'package:unicons/unicons.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        extendBody: true,
        backgroundColor: kBlackColor,
        drawer: Drawer(
          child: DrawerMenu(),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    'assets/profile.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            UniconsLine.bars,
                            color: Colors.white,
                          ),
                          onPressed: () =>
                              _scaffoldKey.currentState.openDrawer(),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.56,
                    ),
                    _username(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _statsTiles("54", "Posts"),
                            _statsTiles("834", "Followers"),
                            _statsTiles("162", "Following")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    BottomNavigationHelper()
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget _username() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Hello',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: kAltGreyColor)),
              TextSpan(
                  text: ', Nayanaa\n',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: kGreyColor)),
              TextSpan(
                  text: ' UI/UX Designer',
                  style: TextStyle(
                      fontSize: 28,
                      color: kGreyColor,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statsTiles(String value, String attribute) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: titlelabelStyle.copyWith(color: kGreyColor, fontSize: 22),
        ),
        Text(
          attribute,
          style: subtitlelabelStyle.copyWith(fontSize: 15),
        )
      ],
    ));
  }
}
