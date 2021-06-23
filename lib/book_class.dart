import 'package:flutter/material.dart';
import 'package:pagina_web/my_activities.dart';

class BookClass extends StatelessWidget {
  final TextStyle myStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 18.0,
  );
  @override
  Widget build(BuildContext context) {
    Widget bookClass = Container(
      height: 250.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.green.shade400,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text(
              "Book a class",
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Icon(
              Icons.photo_camera_front,
              size: 100.0,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "Trouve un cours particulier en moins de 5 minutes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
    Container planLater = Container(
      height: 250.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.blue.shade800,
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
            margin: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              right: 20.0,
            ),
            child: Icon(
              Icons.calendar_today_outlined,
              size: 100.0,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "Planifie un cours particulier sur ton calendrier",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
    Container reflexSheet = Container(
      height: 250.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.indigo.shade900,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Text(
              "Reflex sheets",
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              right: 20.0,
            ),
            child: Icon(
              Icons.book_outlined,
              size: 100.0,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "revise avec des fiches de revisions detaillees",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
    Container clicknCorrect = Container(
      height: 250.0,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.pink.shade800,
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
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Icon(
              Icons.pageview_outlined,
              size: 100.0,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              "Fait corriger tes exerceices de maths en une photo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

    //FIXME: flutter run -d chrome --dart-define=FLUTTER_WEB_USE_SKIA=true

    Widget firstRow = Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(),
          ),
          Expanded(
            child: bookClass,
            flex: 6,
          ),
          Expanded(
            child: planLater,
            flex: 4,
          ),
          Expanded(
            flex: 3,
            child: SizedBox(),
          ),
        ],
      ),
    );

    Widget secondRow = Row(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        Expanded(
          child: reflexSheet,
          flex: 4,
        ),
        Expanded(
          child: clicknCorrect,
          flex: 6,
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
      ],
    );

    Widget dificultyBar = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            child: Text(
              "Niveau de Fidelite",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              shape: BoxShape.rectangle,
              color: Colors.greenAccent,
            ),
            height: 25.0,
          ),
        ],
      ),
    );

    Widget thridRow = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            child: dificultyBar,
            flex: 3,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );

    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          firstRow,
          secondRow,
          thridRow,
          MyActivities(),
        ],
      ),
    );
  }
}
