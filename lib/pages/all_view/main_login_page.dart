import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainLoginPage extends StatelessWidget {
  Widget customButtom(
      BuildContext context,
      String navigatorRoute,
      Color textColor,
      String insideText,
      Color backgroundColor,
      Color borderColor) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: backgroundColor,
          border: Border.all(color: borderColor)),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, navigatorRoute),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            insideText,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }

  final TextStyle myStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 18.0,
  );
  Widget teacherInfo(String image, String text) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xff12133C),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 200.0,
              margin: EdgeInsets.all(5.0),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextSpan boldTextSpan(String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  TextSpan normalTextSpan(String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget bookClass = Container(
      height: 270.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xff4CAE7D),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text(
              "MyClassNow",
              style: myStyle,
            ),
          ),
          Container(
            height: 150.0,
            width: 250.0,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/book_now.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  normalTextSpan("Vouspermet de trouver ou de donner des "),
                  boldTextSpan("cours particuliers\n"),
                  normalTextSpan("en legne rapidement et facilement."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    Container planLater = Container(
      height: 270.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xff2C4997),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text(
              "Plan a class for later",
              style: myStyle,
            ),
          ),
          Container(
            height: 150.0,
            width: 250.0,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/PlanAClassForLater.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  normalTextSpan("Vous permet de "),
                  boldTextSpan("reserver "),
                  normalTextSpan("ou "),
                  boldTextSpan("planifier "),
                  normalTextSpan(
                      "des cours\n particuliers en avance grace a un calendrier.")
                ],
              ),
            ),
          ),
        ],
      ),
    );
    Container reflexSheet = Container(
      height: 270.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xff12133C),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text(
              "Maths in Motion",
              style: myStyle,
            ),
          ),
          Container(
            height: 150.0,
            width: 250.0,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/MathsInMotion.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  boldTextSpan("Revisez "),
                  normalTextSpan(
                      "vos chapitres de maths\n avec des videos explicatives.")
                ],
              ),
            ),
          ),
        ],
      ),
    );
    Container clicknCorrect = Container(
      height: 270.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xffB71C8C),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text(
              "Click&Correct",
              style: myStyle,
            ),
          ),
          Container(
            height: 150.0,
            width: 250.0,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/request_correction.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  normalTextSpan("Faites "),
                  boldTextSpan("corriger "),
                  normalTextSpan(
                      "ou corrigez des copies de toutes\n matieres sans etapes intermediaires"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    Widget firstRow = Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            child: bookClass,
            flex: 7,
          ),
          Expanded(
            child: planLater,
            flex: 6,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
    Widget secondRow = Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
        Expanded(
          child: reflexSheet,
          flex: 6,
        ),
        Expanded(
          child: clicknCorrect,
          flex: 7,
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );

    Widget opacityContainer = Opacity(
      opacity: 0.8,
      child: Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
    Widget welcomeRow = Container(
      margin: EdgeInsets.only(top: 70.0, left: 40.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 4,
            child: Container(
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.deepOrange,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(left: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "ARO",
                      style: TextStyle(
                        color: Color(0xff12133C),
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 30.0),
                  child: Text(
                    '''Faites partie de la
revolution pedagogique.
                  ''',
                    style: TextStyle(
                      color: Color(0xff12133C),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                customButtom(context, "null", Color(0xffB71C8C), "Connection",
                    Colors.white24, Color(0xffB71C8C)),
                customButtom(context, "null", Colors.white, "Creer un compte",
                    Color(0xffB71C8C), Color(0xffB71C8C)),
              ],
            ),
          ),
        ],
      ),
    );
    Widget teacherExperiences = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              child: teacherInfo("lib/assets/images/book_now.jpg", "Diplomes")),
          Flexible(
              child: teacherInfo(
                  "lib/assets/images/book_now.jpg", "Experimentes")),
          Flexible(
              child:
                  teacherInfo("lib/assets/images/book_now.jpg", "Pedagogues"))
        ],
      ),
    );
    Widget myRowButtoms = Container(
      margin: EdgeInsets.only(bottom: 50.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: customButtom(context, "null", Color(0xffB71C8C),
                "Voir les avis", Colors.white24, Color(0xffB71C8C)),
          ),
          Container(
            child: customButtom(context, "null", Colors.white, "Connection",
                Color(0xffB71C8C), Color(0xffB71C8C)),
          ),
        ],
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
            ListView(
              children: [
                Column(
                  children: [
                    welcomeRow,
                    Container(
                      margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                      child: Text(
                        "Nos services",
                        style: TextStyle(
                          color: Color(0xff12133C),
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    firstRow,
                    secondRow,
                    Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                      child: customButtom(
                          context,
                          "null",
                          Colors.white,
                          "Creer un compte",
                          Color(0xffB71C8C),
                          Color(0xffB71C8C)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Les professerurs ARO sont :",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    teacherExperiences,
                    Container(
                      child: Text(
                        "Le diplome ,les connaissances at la pedagogie des preofesseurs ont etes verifies par notre equipe.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    myRowButtoms,
                  ],
                ),
              ],
            )
          ],
        ),
        minimum: EdgeInsets.all(25.0),
      ),
    );
    return Scaffold(
      body: backgroundImage,
    );
  }
}
