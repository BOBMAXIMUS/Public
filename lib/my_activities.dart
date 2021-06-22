import 'package:flutter/material.dart';

class MyActivities extends StatelessWidget {
  final card1 = Container(
    padding: EdgeInsets.all(5.0),
    margin: EdgeInsets.all(5.0),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(5.0),
          child: Icon(Icons.perm_camera_mic),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                "some text exdi",
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text("some other text lol"),
            ),
          ],
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Container example1 = Container(
      width: 200.0,
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                color: Colors.orange,
                margin: EdgeInsets.only(left: 20.0, right: 5.0),
                child: Icon(
                  Icons.colorize_rounded,
                  color: Colors.black,
                ),
              ),
              Container(
                color: Colors.blue,
                child: Text("Mes Activites"),
              ),
            ],
          ),
          card1,
        ],
      ),
    );
    Container example2 = Container(
      width: 200.0,
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 18.0,
          ),
          card1,
        ],
      ),
    );
    Container example3 = Container(
      width: 200.0,
      height: 200.0,
      color: Colors.orange,
      padding: EdgeInsets.all(10.0),
      child: null,
    );

    Widget adjunt1 = Center(
      child: Row(
        children: [
          example1,
        ],
      ),
    );

    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runSpacing: 5.0, // separacion al momento de rodar
      children: [adjunt1, example3],
    );

    return adjuntExamples;
  }
}
