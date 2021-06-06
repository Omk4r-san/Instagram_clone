import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/data.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/screens/chat_box_screen.dart';
import 'package:unicons/unicons.dart';

class MessagesScreen extends StatefulWidget {
  MessagesScreen({Key key}) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [_appBar(), _searchBar(), _chatsTiles()],
      ),
    );
  }

  Widget _appBar() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kGreyColor)),
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/profile.png",
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Chats",
            style: titlelabelStyle.copyWith(fontSize: 35),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
          ),
          Image.asset(
            'assets/chatadd.png',
            height: 40,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(UniconsLine.search),
            hintText: "Search",
            contentPadding:
                new EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kBlackColor, width: 1.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kBlackColor, width: 0.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1.0, color: Colors.red)),
          ),
        ),
      ),
    );
  }

  Widget _chatsTiles() {
    return Container(
      height: MediaQuery.of(context).size.height * 2,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatBoxScreen(
                                image: "https://i.pravatar.cc/450?img=$index",
                              )));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(2),
                    leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kGreyColor)),
                        child: CircleAvatar(
                          maxRadius: 38,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                            "https://i.pravatar.cc/450?img=$index",
                          ),
                        )),
                    title: Text(
                      namesList[index],
                      style: titlelabelStyle,
                    ),
                    trailing: Text(
                      "10m",
                      style: subtitlelabelStyle,
                    ),
                    subtitle: Text("Have a nice day bro!!",
                        style: subtitlelabelStyle),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
