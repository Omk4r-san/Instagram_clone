import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/data.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:unicons/unicons.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: Text(
                "You",
                style: titlelabelStyle,
              ),
            ),
            Divider(
              color: Colors.black54,
            ),
            _followRequests(),
            Divider(
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "New",
                style: titlelabelStyle,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: _newTiles(context)),
            Divider(
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Today",
                style: titlelabelStyle,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: _todayTile(context)),
            Divider(
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This Week",
                style: titlelabelStyle,
              ),
            ),
            _thisWeek(context),
            Divider(
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This Month",
                style: titlelabelStyle,
              ),
            ),
            _thisWeek(context)
          ],
        ),
      ),
    );
  }

  Widget _followRequests() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Follow Requests",
              style: titlelabelStyle,
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.redAccent),
              child: Center(
                  child: Text(
                "5",
                style: subtitlelabelStyle.copyWith(color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _newTiles(
    BuildContext context,
  ) {
    return ListTile(
      leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: kGreyColor)),
          child: CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage("https://i.pravatar.cc/450?img=1"),
          )),
      title: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Karenn', style: titlelabelStyle.copyWith(fontSize: 15)),
            TextSpan(text: ' Liked your photo. 3h', style: subtitlelabelStyle),
          ],
        ),
      ),
      trailing: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.13,
        color: Colors.grey,
        child: Image.asset(
          'assets/post.jpg',
          height: 25,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _thisWeek(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kGreyColor)),
              child: CircleAvatar(
                maxRadius: 32,
                backgroundColor: Colors.white,
                backgroundImage:
                    NetworkImage("https://i.pravatar.cc/450?img=1"),
              )),
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'craig_love',
                    style: titlelabelStyle.copyWith(fontSize: 15)),
                TextSpan(
                    text: ' mentioned you in a comment ',
                    style: subtitlelabelStyle),
                TextSpan(
                    text: '@jacob_w',
                    style:
                        subtitlelabelStyle.copyWith(color: Colors.lightBlue)),
                TextSpan(text: ' exactly.. 2d', style: subtitlelabelStyle),
              ],
            ),
          ),
          subtitle: Row(
            children: [
              Icon(
                UniconsLine.heart,
                color: Colors.black45,
                size: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Reply"),
              )
            ],
          ),
          trailing: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.13,
            color: Colors.grey,
            child: Image.asset(
              'assets/upload.jpg',
              height: 25,
              fit: BoxFit.cover,
            ),
          ),
        ),
        _followingTile(context, null, "message", 2),
        _followingTile(context, null, "message", 4),
        _followingTile(context, Colors.lightBlue, "Follow", 5)
      ],
    );
  }

  Widget _followingTile(
      BuildContext context, Color color, String text, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListTile(
          leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kGreyColor)),
              child: CircleAvatar(
                maxRadius: 30,
                backgroundColor: Colors.white,
                backgroundImage:
                    NetworkImage("https://i.pravatar.cc/450?img=$index"),
              )),
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: namesList[index],
                    style: titlelabelStyle.copyWith(fontSize: 15)),
                TextSpan(
                    text: ' Stareted following you. 3d',
                    style: subtitlelabelStyle),
              ],
            ),
          ),
          trailing: Container(
            width: MediaQuery.of(context).size.width * 0.28,
            height: MediaQuery.of(context).size.height * 0.04,
            decoration: BoxDecoration(
                color: color == null ? Colors.white : color,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: subtitlelabelStyle.copyWith(color: Colors.black),
              ),
            ),
          )),
    );
  }

  Widget _todayTile(BuildContext context) {
    return ListTile(
      leading: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kGreyColor)),
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      NetworkImage("https://i.pravatar.cc/450?img=1"),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kGreyColor)),
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        NetworkImage("https://i.pravatar.cc/450?img=2"),
                  )),
            ),
          ],
        ),
      ),
      title: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Kierio_o,',
                style: titlelabelStyle.copyWith(fontSize: 15)),
            TextSpan(
                text: 'ZachJohn',
                style: titlelabelStyle.copyWith(fontSize: 15)),
            TextSpan(text: ' and ', style: subtitlelabelStyle),
            TextSpan(
                text: '26 Others',
                style: titlelabelStyle.copyWith(fontSize: 15)),
            TextSpan(text: ' Liked your photo. 3h', style: subtitlelabelStyle),
          ],
        ),
      ),
      trailing: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.13,
        color: Colors.grey,
        child: Image.asset(
          'assets/post.jpg',
          height: 25,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
