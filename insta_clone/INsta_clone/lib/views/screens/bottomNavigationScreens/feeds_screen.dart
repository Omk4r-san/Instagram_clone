import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/data.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/screens/add_story_Screen.dart';
import 'package:sendry_app/views/screens/livestream_screen.dart';
import 'package:sendry_app/views/screens/messages_screen.dart';
import 'package:sendry_app/views/widgets/bottomnavigation_bar.dart';
import 'package:sendry_app/views/widgets/post_card.dart';

class FeedsScreen extends StatefulWidget {
  FeedsScreen({Key key}) : super(key: key);

  @override
  _FeedsScreenState createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _heading(),
              _storiesList(),
              Divider(
                color: Colors.black12,
                thickness: 1,
              ),
              PostCard()
            ],
          ),
        ),
      ),
    );
  }

  Widget _heading() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Feed",
              style: titlelabelStyle.copyWith(fontSize: 30),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessagesScreen()));
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: Image.asset(
                  'assets/message.png',
                  height: 25,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _storiesList() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return _storiesDisk(
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddStoryScreen()));
                },
                "assets/profile.png",
                "Your Story",
              );
            } else if (index == 1) {
              return _liveDisc(index);
            }

            return _storiesDisk(
                null, "https://i.pravatar.cc/450?img=$index", namesList[index]);
          }),
    );
  }

  Widget _storiesDisk(Function onTap, String image, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kGreyColor)),
                  child: CircleAvatar(
                    maxRadius: 35,
                    backgroundColor: Colors.white,
                    backgroundImage: image == "assets/profile.png"
                        ? AssetImage(image)
                        : NetworkImage(image),
                  )),
              Text(name)
            ],
          ),
        ),
      ),
    );
  }

  Widget _liveDisc(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LiveStreamScreen(
                      image: "https://i.pravatar.cc/450?img=3",
                      name: "Karen")));
        },
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Center(
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/450?img=3",
                            ),
                          )),
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 70,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 18,
                        width: 25,
                        child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              "live",
                              style: subtitlelabelStyle.copyWith(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Text("Karen")
            ],
          ),
        ),
      ),
    );
  }
}
