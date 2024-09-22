import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:magazine_app/widgets/list_card.dart';

class ListArticles extends StatefulWidget {
  ListArticles({Key? key}) : super(key: key);

  @override
  _ListArticlesState createState() => _ListArticlesState();
}

class _ListArticlesState extends State<ListArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            FeatherIcons.chevronLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FeatherIcons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ], systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "magazine".toUpperCase(),
                style: TextStyle(
                    fontFamily: "Butler", fontSize: 30, color: Colors.black),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 2,
              color: Colors.black,
              margin: EdgeInsets.only(bottom: 30),
            ),
            ListCard(
              image: "cover.jpg",
              title: "Free Palestine",
              date: "Sept 27th 2024",
            ),
            ListCard(
              image: "beauty.jpg",
              title: "Northern Lights",
              date: "Sept 27th 2024",
              inverted: true,
            ),
            ListCard(
              image: "mood.jpg",
              title: "Barrier Reef",
              date: "Sept 27th 2024",
            ),
            ListCard(
              image: "milena.jpg",
              title: "Tokyo Night",
              date: "Sept 27th 2024",
              inverted: true,
            ),
          ],
        ),
      ),
    );
  }
}
