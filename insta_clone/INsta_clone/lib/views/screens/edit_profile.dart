import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/style.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            _topTile(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kGreyColor)),
                  child: CircleAvatar(
                    maxRadius: 65,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/profile.png"),
                  )),
            ),
            Text(
              "Change Profile Photo",
              style: subtitlelabelStyle.copyWith(color: Colors.redAccent),
            ),
            Divider(
              color: Colors.black87,
              height: 30,
            ),
            _detailsForm(),
            Divider(
              color: Colors.black87,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Switch to professional account",
                  style: subtitlelabelStyle.copyWith(
                      color: Colors.redAccent, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Private information",
                  style: titlelabelStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            _privateDetailForm()
          ],
        )),
      ),
    );
  }

  Widget _topTile() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Cancel",
            style: subtitlelabelStyle,
          ),
          Text(
            "Edit Profile",
            style: titlelabelStyle,
          ),
          Text(
            "Done",
            style: subtitlelabelStyle.copyWith(color: Colors.redAccent),
          )
        ],
      ),
    );
  }

  Widget _detailsForm() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Name",
                style: titlelabelStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Username",
                style: titlelabelStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Website",
                style: titlelabelStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Bio",
                style: titlelabelStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
          ],
        )
      ],
    );
  }

  Widget _privateDetailForm() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Email",
                style: titlelabelStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Phone",
                style: titlelabelStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Gender",
                style: titlelabelStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextFormField()),
            ),
          ],
        )
      ],
    );
  }
}
