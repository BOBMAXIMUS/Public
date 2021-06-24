import 'package:flutter/material.dart';
import 'package:pagina_web/book_class.dart';
import 'package:pagina_web/correction_stack.dart';
import 'package:pagina_web/home_content.dart';
import 'package:pagina_web/progress_bar.dart';

class CustomAppbar extends StatefulWidget {
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
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
      margin: EdgeInsets.only(right: 30.0),
      child: InkWell(
        onTap: () {
          setState(() {
            indexTap = 0;
          });
        },
        child: Text(
          "ARO",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    Widget clickCorrect = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          InkWell(
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
        ],
      ),
    );

    Widget myClassNow = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          InkWell(
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
        ],
      ),
    );

    Widget avis = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text("AVIS", style: pinkTextStyle),
        ],
      ),
    );

    Widget search = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Icon(Icons.search),
        ],
      ),
    );

    Widget comments = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Icon(Icons.comment),
        ],
      ),
    );

    Widget settings = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Icon(Icons.settings),
        ],
      ),
    );

    Container allBanner = Container(
      padding: EdgeInsets.only(
        top: 30.0,
        bottom: 28.0,
      ),
      child: Expanded(
        //FIXME:, El flexible esta mal implementado
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            //TODO: Hacer un expanded  para cuando cambien de tamaño la pantalla?
            aroLogo,
            clickCorrect,
            myClassNow,
            avis,
            search,
            comments,
            settings,
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );

    Row underLine = Row(
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
    );

    Column allAppbar = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [allBanner, underLine],
    );

    Widget opacityContainer = Opacity(
      opacity: 0.9,
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
