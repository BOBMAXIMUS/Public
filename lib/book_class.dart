import 'package:flutter/material.dart';

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

    //FIXME: Todos los ROW de los containers tiran un error con el mal uso del Flex

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

    Widget fourtRow = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        Icons.colorize_rounded,
                        color: Colors.black,
                      ),
                      Text("Mes Activites"),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    color: Colors.purple,
                    width: 300,
                    height: 300,
                    child: null,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.purple,
            width: 300,
            height: 300,
            child: Text(
              "I'm a Table :D",
              textAlign: TextAlign.center,
            ),
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
          fourtRow,
        ],
      ),
    );
  }
}
