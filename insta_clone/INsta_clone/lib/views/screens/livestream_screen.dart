import 'package:flutter/material.dart';
import 'package:sendry_app/constants/data.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveStreamScreen extends StatefulWidget {
  final String image;
  final String name;
  LiveStreamScreen({Key key, this.image, this.name}) : super(key: key);

  @override
  _LiveStreamScreenState createState() => _LiveStreamScreenState();
}

class _LiveStreamScreenState extends State<LiveStreamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.7,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Image.asset(
                  'assets/livStream.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          _livePage(),
          Align(alignment: Alignment.bottomCenter, child: _bottomBar())
        ],
      ),
    );
  }

  Widget _livePage() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            _topBar(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
            ),
            _joinedPeople(),
            _emojisList(),
          ],
        ),
      ),
    );
  }

  Widget _topBar() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1)),
              child: CircleAvatar(
                maxRadius: 23,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  widget.image,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.name,
            style: titlelabelStyle.copyWith(color: Colors.white),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
        ),
        Container(
          height: 30,
          width: 40,
          child: Container(
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.black),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "LIVE",
                  style: subtitlelabelStyle.copyWith(
                      fontSize: 13, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.038,
            width: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.black45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey,
                  size: 15,
                ),
                Text(
                  "1",
                  style: titlelabelStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              UniconsLine.times,
              color: Colors.white70,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }

  Widget _joinedPeople() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                  child: CircleAvatar(
                    maxRadius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        NetworkImage("https://i.pravatar.cc/450?img=1"),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Karennne Joined",
                  style: subtitlelabelStyle.copyWith(
                      color: Colors.white70, fontSize: 18),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xfff9fc4f2).withOpacity(0.6)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1)),
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(widget.image),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Send request to be in \nmaxjobsons live video.",
                      style: subtitlelabelStyle.copyWith(
                          color: Colors.white70, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    height: 50,
                    child: VerticalDivider(
                      width: 10,
                      thickness: 0.5,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      "Request",
                      style: titlelabelStyle.copyWith(color: Colors.white70),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _emojisList() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black45),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    emojisList[index],
                    style: titlelabelStyle.copyWith(
                        fontSize: 20, color: Colors.white70),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget _bottomBar() {
    return Padding(
      padding: const EdgeInsets.only(top: .0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white70)),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Comment", style: subtitlelabelStyle),
                        IconButton(
                            icon: Icon(
                              UniconsLine.ellipsis_h,
                              color: Colors.white70,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  )),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Image.asset(
                    'assets/stack.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 0.5),
                  child: Text(
                    "?",
                    style: titlelabelStyle.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.038,
                width: 30,
                child:
                    SvgPicture.asset("assets/send.svg", color: Colors.white)),
            Container(
              height: MediaQuery.of(context).size.height * 0.038,
              child: Image.asset(
                'assets/heart.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
