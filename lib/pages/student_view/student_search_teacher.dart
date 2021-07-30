import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StudentSearchTeacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget upperText = Container(
      margin: EdgeInsets.only(top: 65),
      child: Text(
        "Searching for a great teacher",
        style: TextStyle(color: Colors.white),
      ),
    );
    Widget reloadIcon = Container(
      margin: EdgeInsets.only(top: 60),
      child: SpinKitRing(
        color: Colors.white,
        size: 200,
      ),
    );
    Widget stopSearchButtom = Container(
      width: 200.0,
      margin: EdgeInsets.fromLTRB(0, 70, 0, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.pink.shade900,
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: InkWell(
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/studentMainPage"),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Stop and search later",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    return Padding(
      padding: EdgeInsets.only(top: 85.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.grey.shade800,
              width: double.infinity,
              child: Column(
                children: [
                  upperText,
                  reloadIcon,
                  stopSearchButtom,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
