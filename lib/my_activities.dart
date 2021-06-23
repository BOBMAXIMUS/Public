import 'package:flutter/material.dart';

class MyActivities extends StatelessWidget {
  final misActivities = Container(
    color: Colors.yellow,
    child: Row(
      children: [
        Container(
          color: Colors.orange,
          margin: EdgeInsets.only(left: 50.0, right: 5.0),
          child: Icon(
            Icons.colorize_rounded,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        Container(
          color: Colors.blue,
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

  final listCard = Container(
    color: Colors.green,
    child: ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text("something"),
      subtitle: Text("Other something"),
      dense: true,
    ),
  );

  final boldText = TextStyle(
      color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold);
  final subText = TextStyle(
      color: Colors.black54, fontSize: 13.0, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    //TODO: Una clase la cual reciba el Titulo y el Subtitulo
    Widget rowIcon = Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: Colors.green,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.ac_unit),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "awdaowidawd",
                style: boldText,
              ),
              Text(
                "awjdawdauwd",
                style: subText,
              )
            ],
          ),
        ],
      ),
    );

    Widget rowText = Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "awdaowidawd",
            style: boldText,
          ),
          Text(
            "awjdawdauwd",
            style: subText,
          )
        ],
      ),
    );

    Widget rowRow = Row(
      children: [
        rowIcon,
        rowText,
      ],
    );

    Container example1 = Container(
      width: 400.0,
      margin: EdgeInsets.all(10.0),
      color: Colors.red,
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          misActivities,
          rowRow,
          rowRow,
          rowRow,
        ],
      ),
    );
    //TODO: implementar la grafica
    Container example2 = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: 400.0,
      height: 200,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Holis"),
        ],
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
