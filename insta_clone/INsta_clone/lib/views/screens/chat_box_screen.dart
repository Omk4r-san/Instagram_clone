import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:unicons/unicons.dart';

class ChatBoxScreen extends StatefulWidget {
  final String image;
  ChatBoxScreen({Key key, this.image}) : super(key: key);

  @override
  _ChatBoxScreenState createState() => _ChatBoxScreenState();
}

class _ChatBoxScreenState extends State<ChatBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [_topTile(), _messageBox(), _bottomTile()],
        ),
      ),
    ));
  }

  Widget _topTile() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              children: [
                IconButton(
                    icon: Icon(UniconsLine.arrow_left),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: kGreyColor)),
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        widget.image,
                      ),
                    )),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Joshua_l",
                style: titlelabelStyle,
              ),
              Text(
                "typing",
                style: subtitlelabelStyle.copyWith(fontStyle: FontStyle.italic),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          Material(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.redAccent),
                child: IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onPressed: () {})),
          )
        ],
      ),
    );
  }

  Widget _messageBox() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.77,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: Text(
              "Today",
              style: subtitlelabelStyle,
            )),
            _sentMessage("Hello Martini"),
            _recievedMessage("hello nayanaa"),
            _recievedMessage("its been a while since u mesged \n what's up"),
            _sentMessage("I wonder if you would like to got to film tonight"),
            _recievedMessage("Souns like a good deal"),
          ],
        ),
      ),
    );
  }

  Widget _sentMessage(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: UnconstrainedBox(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.black54)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                text,
                style: subtitlelabelStyle.copyWith(color: kAltGreyColor),
              )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _recievedMessage(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: UnconstrainedBox(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: kGreyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                text,
                style: subtitlelabelStyle.copyWith(color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomTile() {
    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(2)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Type the text here",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.redAccent),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.redAccent),
                          child: Image.asset(
                            'assets/camera.png',
                            height: 20,
                            width: 25,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kbackgrounColor, width: 0.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.red)),
                    ),
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              'assets/mice.png',
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
