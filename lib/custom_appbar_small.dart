import 'package:flutter/material.dart';

import 'book_class.dart';
import 'correction_stack.dart';
import 'home_content.dart';

class AppBarMobileMode extends StatefulWidget {
  @override
  _AppBarMobileModeState createState() => _AppBarMobileModeState();
}

class _AppBarMobileModeState extends State<AppBarMobileMode> {
  final pinkTextStyle = TextStyle(
    color: Colors.pink.shade900,
    fontWeight: FontWeight.bold,
  );
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    BookClass(),
    HomePage(),
    CorrectionStack(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget aroLogo = Container(
      margin: EdgeInsets.only(top: 0.0),
      child: InkWell(
          onTap: () {
            setState(() {
              indexTap = 0;
            });
          },
          child: Container(
            height: 50.0,
            width: 70.0,
            margin: EdgeInsets.only(top: 5.0),
            child: Image(
              image: AssetImage("lib/assets/images/aroLogo.jpg"),
              fit: BoxFit.fitWidth,
            ),
          )),
    );

    Widget clickCorrect = Container(
      margin: EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () {
          setState(() {
            indexTap = 1;
          });
        },
        child: Text(
          "CLICK&CORRECT",
          style: pinkTextStyle,
        ),
      ),
    );

    Widget myClassNow = Container(
      margin: EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () {
          setState(() {
            indexTap = 2;
          });
        },
        child: Text(
          "MYCLASSNOW",
          style: pinkTextStyle,
        ),
      ),
    );

    Widget settings = Container(
      height: 50.0,
      width: 50.0,
      margin: EdgeInsets.only(top: 5.0),
      child: Image(
        image: AssetImage("lib/assets/images/settings.jpg"),
        fit: BoxFit.fill,
        color: Colors.pink.shade900,
      ),
    );

    Widget underLine = Container(
      margin: EdgeInsets.only(top: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.pink.shade900,
              height: 1.5,
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );

    Widget allBanner = SizedBox(
      //   height: 25.0,
      child: Container(
        transformAlignment: Alignment.center,
        //   color: Colors.tealAccent,
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          spacing: 5.0, //separacion segun el "direction" ,horizontal
          children: [
            aroLogo,
            clickCorrect,
            myClassNow,
            settings,
          ],
        ),
      ),
    );
    Widget allAppbar = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [allBanner, underLine],
      ),
    );
    Widget opacityContainer = Opacity(
      opacity: 0.8,
      child: Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    );

    Widget backgroundImage = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/purple_paper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            opacityContainer,
            widgetsChildren[indexTap],
            allAppbar,
          ],
        ),
        minimum: EdgeInsets.all(25.0),
      ),
    );

    return backgroundImage;
  }
}
