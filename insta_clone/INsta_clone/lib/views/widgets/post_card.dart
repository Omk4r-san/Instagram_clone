import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/data.dart';
import 'package:sendry_app/constants/style.dart';

class PostCard extends StatefulWidget {
  PostCard({Key key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1 * 10,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.55,
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kGreyColor)),
                        child: CircleAvatar(
                          maxRadius: 35,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                            "https://i.pravatar.cc/450?img=$index",
                          ),
                        )),
                    title: Text(
                      namesList[index],
                      style: titlelabelStyle,
                    ),
                    subtitle: Text(
                      "25 minutes ago from oneplus nord",
                      style: subtitlelabelStyle,
                    ),
                  ),
                  _imageCard(),
                  _postDescription(),
                ],
              ),
            );
          }),
    );
  }

  Widget _imageCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.39,
          width: MediaQuery.of(context).size.width,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              child: Container(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/post.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: kGreyColor)),
                                  child: CircleAvatar(
                                    maxRadius: 18,
                                    backgroundColor: Colors.white,
                                    backgroundImage: NetworkImage(
                                      "https://i.pravatar.cc/450?img=3",
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: kGreyColor)),
                                  child: CircleAvatar(
                                    maxRadius: 18,
                                    backgroundColor: Colors.white,
                                    backgroundImage: NetworkImage(
                                      "https://i.pravatar.cc/450?img=",
                                    ),
                                  )),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.redAccent),
                              child: Center(
                                  child: Text(
                                "+20",
                                style: titlelabelStyle.copyWith(
                                    color: Colors.white),
                              )),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.32),
                            Image.asset(
                              'assets/like.png',
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }

  Widget _postDescription() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: "Zacky",
                style: subtitlelabelStyle.copyWith(
                  color: Colors.black,
                )),
            TextSpan(
                text:
                    'The trip to bali was amazing and i want to share some photos with you guys have a look please',
                style: subtitlelabelStyle),
          ],
        ),
      ),
    );
  }
}
