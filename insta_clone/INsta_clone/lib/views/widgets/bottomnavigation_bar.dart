import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendry_app/views/screens/bottomNavigationScreens/feeds_screen.dart';
import 'package:sendry_app/views/screens/bottomNavigation_screen.dart';
import 'package:unicons/unicons.dart';

class BottomNavigationHelper extends StatefulWidget {
  BottomNavigationHelper({Key key}) : super(key: key);

  @override
  _BottomNavigationHelperState createState() => _BottomNavigationHelperState();
}

class _BottomNavigationHelperState extends State<BottomNavigationHelper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(
                UniconsLine.home_alt,
                size: 35,
                color: Colors.grey[500],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationPage()));
              }),
          IconButton(
              icon: Icon(
                UniconsLine.search,
                size: 35,
                color: Colors.grey[500],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationPage(
                              pageNumber: 1,
                            )));
              }),
          IconButton(
              icon: Icon(
                UniconsLine.plus_square,
                size: 35,
                color: Colors.grey[500],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationPage()));
              }),
          IconButton(
              icon: Icon(
                UniconsLine.heart,
                size: 35,
                color: Colors.grey[500],
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationPage()));
              }),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Image.asset(
                'assets/profile.png',
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
