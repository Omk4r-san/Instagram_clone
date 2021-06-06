import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sendry_app/views/screens/bottomNavigationScreens/feeds_screen.dart';
import 'package:sendry_app/views/screens/ikes_screen.dart';
import 'package:sendry_app/views/screens/profile_screen.dart';
import 'package:sendry_app/views/screens/search_screen.dart';
import 'package:sendry_app/views/screens/upload_image_screen.dart';

import 'package:unicons/unicons.dart';

class BottomNavigationPage extends StatefulWidget {
  final int pageNumber;
  BottomNavigationPage({Key key, this.pageNumber}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  PageController pageController;

  // List<Widget> _widgetOptions = <Widget>[
  //   NotePage(title: "Notes", trailingIcon: UniconsLine.angle_right_b),
  //   AddNotesPage(),
  //   NotePage(title: "Notes", trailingIcon: UniconsLine.repeat)
  // ];
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  set onPageChanged(index) => _onPageChanged(index);
  void _onPageChanged(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.home_alt,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.search,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.plus_square,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.heart,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    'assets/profile.png',
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              label: "",
            )
          ],
          onTap: (index) => setState(() {
            _onPageChanged(index);
            pageController.animateToPage(_selectedIndex,
                duration: Duration(milliseconds: 200),
                curve: Curves.fastOutSlowIn);
          }),
          selectedItemColor: Colors.blueGrey,
          currentIndex:
              widget.pageNumber == null ? _selectedIndex : widget.pageNumber,
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            FeedsScreen(),
            SearchScreen(),
            UploadImageScreen(),
            LikesScreen(),
          ],
          onPageChanged: (index) => _onPageChanged(index),
        ),
      ),
    );
  }
}
