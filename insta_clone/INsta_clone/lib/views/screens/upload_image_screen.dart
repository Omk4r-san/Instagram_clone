import 'package:flutter/material.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/screens/bottomNavigationScreens/feeds_screen.dart';
import 'package:unicons/unicons.dart';

class UploadImageScreen extends StatefulWidget {
  UploadImageScreen({Key key}) : super(key: key);

  @override
  _UploadImageScreenState createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 18.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FeedsScreen()));
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Cancel",
                      style: subtitlelabelStyle.copyWith(fontSize: 17)),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 10),
              child: Text(
                "Next",
                style: titlelabelStyle.copyWith(
                    color: Colors.redAccent, fontSize: 17),
              ),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Recent",
                style: titlelabelStyle,
              ),
              IconButton(
                  icon: Icon(
                    UniconsLine.arrow_down,
                    color: Colors.black,
                  ),
                  onPressed: () {})
            ],
          )),
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              _imagePreview(),
              _deviceImages(),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        // new
        currentIndex: 0, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 0,
            ),
            title: Text(
              'Library',
              style: titlelabelStyle,
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              size: 0,
            ),
            title: Text(
              'Photo',
              style: titlelabelStyle,
            ),
          ),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 0,
              ),
              title: Text(
                'Videox',
                style: titlelabelStyle,
              ))
        ],
      ),
    );
  }

  Widget _imagePreview() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.48,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/upload2.png',
              fit: BoxFit.fill,
            ),
          ),
          _uploadOptions()
        ],
      ),
    );
  }

  Widget _uploadOptions() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.48,
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black45),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/loop.png',
                    height: 10,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black45),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/grid.png',
                      height: 19,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black45),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/stack.png',
                          height: 20,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Select Multiple",
                              style: titlelabelStyle.copyWith(
                                  color: Colors.white, fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _deviceImages() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (3),
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(0.8),
            child: Container(
              height: 50,
              width: 50,
              child: Image(
                image: NetworkImage(
                  "https://i.pravatar.cc/450?img=$index",
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
