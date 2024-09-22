import 'package:flutter/material.dart';
import 'package:magazine_app/widgets/single_page.dart';

class MainSlider extends StatefulWidget {
  MainSlider({Key? key}) : super(key: key);

  @override
  _MainSliderState createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  double pageOffset = 0.0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page!);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: AlwaysScrollableScrollPhysics(),
      controller: pageController,
      children: <Widget>[
        SinglePage(
          image: "cover.jpg",
          title:  "Free Palestine",
          date: "September 27th 2024",
          offset: pageOffset,
        ),
        SinglePage(
          image: "beauty.jpg",
          title: "Northern Lights",
          date: "September 3rd  2024",
          offset: pageOffset - 1,
        ),
        SinglePage(
          image: "mood.jpg",
          title: "Barrier Reef",
          date: "September 6th  2024",
          offset: pageOffset - 2,
        ),
        SinglePage(
          image: "milena.jpg",
          title: "Tokyo Night",
          date: "September 22nd 2024",
          offset: pageOffset - 3,
        ),
      ],
    );
  }
}
