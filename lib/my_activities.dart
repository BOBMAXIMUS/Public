import 'package:flutter/material.dart';

class MyActivities extends StatelessWidget {
  final misActivities = Container(
    // color: Colors.yellow,
    child: Row(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          margin: EdgeInsets.only(top: 5.0),
          child: Image(
              image: AssetImage("lib/assets/images/EditInfo.jpg"),
              fit: BoxFit.cover),
        ),
        Container(
          //  color: Colors.blue,
          child: Text(
            "Mes Activites",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    ),
  );

  final boldText = TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  final subText = TextStyle(
      color: Colors.black54, fontSize: 13.0, fontWeight: FontWeight.w300);

  cardTileIcon(String title, String subTitle, String asset, Color color) {
    Widget rowIcon = Container(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      // color: Colors.green,
      width: 198.0,
      child: Row(
        children: [
          Container(
            height: 45.0,
            width: 45.0,
            margin: EdgeInsets.only(top: 5.0),
            child: Image(
              image: AssetImage(asset),
              fit: BoxFit.cover,
              color: color,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: boldText,
                textAlign: TextAlign.center,
              ),
              Text(
                subTitle,
                style: subText,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ],
      ),
    );

    return rowIcon;
  }

  cardTileText(String title, String subTitle) {
    Widget rowText = Container(
      // color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: boldText,
            textAlign: TextAlign.center,
          ),
          Text(
            subTitle,
            style: subText,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
    return rowText;
  }

  @override
  Widget build(BuildContext context) {
    Widget rowRow1 = Row(
      children: [
        cardTileIcon("Terminale S", "Subtitle text",
            "lib/assets/images/Profile.jpg", Colors.black),
        cardTileText("Anglais", "Subtitle text"),
      ],
    );
    Widget rowRow2 = Row(
      children: [
        cardTileIcon("8 cours particuliers", "Subtitle text",
            "lib/assets/images/MCNStats.jpg", Colors.black),
        cardTileText("2 heures", "Subtitle text"),
      ],
    );
    Widget rowRow3 = Row(
      children: [
        cardTileIcon("6 corrections", "Subtitle text",
            "lib/assets/images/CNCSearch.jpg", null),
        cardTileText("2 exercices", "Subtitle text"),
      ],
    );

    Container example1 = Container(
      width: 400.0,
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          misActivities,
          rowRow1,
          rowRow2,
          rowRow3,
        ],
      ),
    );

    Container example2 = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 400.0,
      height: 200,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        // color: Colors.tealAccent.shade700,
        image: DecorationImage(
          image: AssetImage("lib/assets/images/stats_board.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );

    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runSpacing: 5.0, // separacion al momento de rodar
      children: [example1, example2],
    );

    return adjuntExamples;
  }
}
