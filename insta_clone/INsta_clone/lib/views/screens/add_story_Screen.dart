import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/views/screens/upload_image_screen.dart';
import 'package:unicons/unicons.dart';

class AddStoryScreen extends StatefulWidget {
  AddStoryScreen({Key key}) : super(key: key);

  @override
  _AddStoryScreenState createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  child: Image.asset(
                    'assets/vase.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [_topStrip(), _cameraButtons()],
                  ),
                ),
              ),
              Align(alignment: Alignment.bottomCenter, child: _bottomStrip())
            ],
          ),
        ));
  }

  Widget _topStrip() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            UniconsLine.setting,
            color: Colors.white,
            size: 30,
          ),
          IconButton(
              icon: Icon(
                UniconsLine.arrow_right,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UploadImageScreen()));
              })
        ],
      ),
    );
  }

  Widget _cameraButtons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 3, color: kGreyColor)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/vase.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Image.asset(
            'assets/flash.png',
            height: 50,
            width: 50,
            fit: BoxFit.fill,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 15, color: Colors.black38)),
            child: Image.asset(
              'assets/shot.png',
              height: 60,
              width: 60,
            ),
          ),
          Image.asset(
            'assets/reload.png',
            height: 40,
            width: 40,
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/emoji.png',
            height: 40,
            width: 40,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  Widget _bottomStrip() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/modes.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
