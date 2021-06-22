import 'package:flutter/material.dart';
import 'package:pagina_web/book_class.dart';
import 'package:pagina_web/correction_stack.dart';
import 'package:pagina_web/home_content.dart';
import 'package:pagina_web/progress_bar.dart';

class CustomAppbar extends StatelessWidget {
  final pinkTextStyle = TextStyle(
    color: Colors.pink.shade900,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    Widget aroLogo = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      color: Colors.brown,
      child: Row(
        children: [
          Text(
            "ARO",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    Widget clickCorrect = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            "CLICK&CORRECT",
            style: pinkTextStyle,
          ),
        ],
      ),
    );

    Widget myClassNow = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text("MYCLASSNOW", style: pinkTextStyle),
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
      color: Colors.white,
      padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          aroLogo,
          clickCorrect,
          myClassNow,
          avis,
          search,
          comments,
          settings
        ],
      ),
    );

    Row underLine = Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.purple,
            height: 1.5,
          ),
        ),
      ],
    );

    Column test = Column(
      children: [allBanner, underLine],
    );

    Widget allAppbar = Container(
      child: Stack(
        children: [
          /*  allBanner,
          underLine,*/
          test
        ],
      ),
    );
    Widget opacityContainer = Opacity(
      opacity: 0.5,
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
            //TODO: hacer un index para cambiar entre las diferentes pantallas
            // CorrectionStack(),
            //BookClass(),
            opacityContainer,
            HomePage(),
            allAppbar,

            //  test,
          ],
        ),
        minimum: EdgeInsets.all(25.0),
      ),
    );

    return backgroundImage;
  }
}
