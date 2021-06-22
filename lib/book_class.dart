import 'package:flutter/material.dart';

class BookClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container example1 = Container(
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          Text("1"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
    Container example2 = Container(
      color: Colors.white,
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
      color: Colors.white,
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
      color: Colors.white,
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

    return Container(
      padding: EdgeInsets.all(25.0),
    );
  }
}
