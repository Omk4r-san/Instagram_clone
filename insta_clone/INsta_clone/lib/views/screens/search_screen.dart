import 'package:flutter/material.dart';
import 'package:sendry_app/constants/colors.dart';
import 'package:sendry_app/constants/data.dart';
import 'package:sendry_app/constants/style.dart';
import 'package:sendry_app/views/widgets/crausel_widget.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: titlelabelStyle,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kGreyColor)),
                        child: CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/profile.png"))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Divider(
                  color: Colors.black54,
                ),
              ),
              Container(
                child: Crousel(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _searchBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 25),
                child: Text(
                  "New Designs",
                  style: titlelabelStyle.copyWith(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Divider(
                  color: Colors.black54,
                ),
              ),
              _staggeredGrid(context)
            ],
          ),
        ),
      )),
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

  Widget _staggeredGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => new Container(
              child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageList[index],
                  fit: BoxFit.cover,
                )),
          )),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
