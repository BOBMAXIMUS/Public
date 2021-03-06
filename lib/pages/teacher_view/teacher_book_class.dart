import 'package:flutter/material.dart';
import 'package:pagina_web/widgets/calendar_widget.dart';

class TeacherBookClass extends StatelessWidget {
  Widget contentText = Container(
    height: 600.0,
    width: 300.0,
    margin: EdgeInsets.only(top: 20.0, right: 15.0, left: 5.0),
    padding: EdgeInsets.all(5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Book a class for later",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),
        Text(
          "SELECT A DATE ON THE CALENDAR AND PRESS THE VALIDATE BUTTON TO LOCK IN.",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 250.0),
        Container(
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Container(
              height: 40.0,
              width: 180.0,
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.pink.shade600,
              ),
              child: Text(
                "Ajouter plus d'horaires",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Container(
              height: 40.0,
              width: 180.0,
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.pink.shade600,
              ),
              child: Text(
                "Sauvergarder horaires",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  //TODO: Calendario ; https://youtu.be/3OROjbAQS8Y or https://pub.dev/packages/syncfusion_flutter_calendar
  @override
  Widget build(BuildContext context) {
    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runSpacing: 5.0, // separacion al momento de rodar
      children: [contentText, CustomCalendar()],
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          adjuntExamples,
        ],
      ),
    );
  }
}
