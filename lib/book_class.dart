import 'package:flutter/material.dart';
import 'package:pagina_web/my_activities.dart';

class BookClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget example1 = Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.amber,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("2"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
    Container example2 = Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.red,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("2"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
    Container example3 = Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.yellow,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("3"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
    Container example4 = Container(
      margin: EdgeInsets.all(5.0),
      color: Colors.indigo,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("4"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
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
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            child: example1,
            flex: 5,
          ),
          Expanded(
            child: example2,
            flex: 3,
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
          child: example3,
          flex: 3,
        ),
        Expanded(
          child: example4,
          flex: 5,
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );

    Widget dificultyBar = Column(
      children: [
        Text("Niveau de Fidelite"),
        Container(
          width: 300.0,
          height: 25.0,
          color: Colors.green,
        ),
      ],
    );

    Widget thridRow = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          dificultyBar,
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
