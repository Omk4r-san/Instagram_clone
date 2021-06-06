import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/screens/edit_profile.dart';
import 'package:unicons/unicons.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isSettingTrue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: kBlackColor,
      child: Column(
        children: [
          isSettingTrue == true ? _settingOptions() : _userOptions(),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSettingTrue = true;
              });
            },
            child: ListTile(
              leading: Icon(
                UniconsLine.setting,
                size: 30,
                color: Colors.grey[500],
              ),
              title: Text(
                "Settings",
                style: titlelabelStyle.copyWith(
                    fontSize: 20, color: Colors.grey[500]),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _userOptions() {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Nayanaa Rookey",
                style: titlelabelStyle.copyWith(
                    color: Colors.grey[500], fontSize: 24),
              ),
            ),
            _settingTile(UniconsLine.clock, "Posts"),
            _settingTile(UniconsLine.clock, "Following"),
            _settingTile(UniconsLine.bars, "Followers"),
            _settingTile(UniconsLine.user_plus, "Discover people"),
          ],
        ),
      ),
    );
  }

  Widget _settingOptions() {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "settings",
                style: titlelabelStyle.copyWith(
                    color: Colors.grey[500], fontSize: 24),
              ),
            ),
            _settingTile(UniconsLine.clock, "Logged in"),
            _settingTile(UniconsLine.clock, "Logout"),
            _settingTile(UniconsLine.user_plus, "Add Account"),
            _settingTile(UniconsLine.setting, "Edit profile", () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            }),
          ],
        ),
      ),
    );
  }

  Widget _settingTile(IconData icon, String title, [Function onTap]) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.grey[500],
            size: 30,
          ),
          title: Text(
            title,
            style:
                titlelabelStyle.copyWith(color: Colors.grey[500], fontSize: 20),
          ),
        ),
      ),
    );
  }
}
