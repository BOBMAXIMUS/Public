import 'package:flutter/material.dart';
import 'package:pagina_web/widgets/calendar_widget.dart';

class TeacherBookClass extends StatelessWidget {
  Widget contentText = Container(
    height: 600.0,
    width: 200.0,
    color: Colors.teal,
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
          width: 130.0,
          color: Colors.pink.shade600,
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Text("Ajouter plus d'horarisomething xd"),
          ),
        ),
        Container(
          width: 130.0,
          color: Colors.pink.shade600,
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Text("SOME INPUT TEXT"),
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
