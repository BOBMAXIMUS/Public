import 'package:flutter/material.dart';

class StudentMathsInMotionPage extends StatefulWidget {
  @override
  _StudentMathsInMotionPageState createState() =>
      _StudentMathsInMotionPageState();
}

class _StudentMathsInMotionPageState extends State<StudentMathsInMotionPage> {
  final myController = TextEditingController();

  //TODO: Aplicar esto https://youtu.be/2aJZzRMziJc "ExpandeList"
  Widget menuOptions(String text) {
    Widget option = InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
        padding: EdgeInsets.only(left: 7.0),
        alignment: Alignment.topLeft,
        child: Text(text),
      ),
    );
    return option;
  }

  Widget optionContent(String title, String subtitle) {
    Widget opc = Flexible(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 350.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              width: 130.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(13),
                color: Colors.black,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(right: 10.0, top: 8.0, bottom: 5.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(child: Text(subtitle))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return opc;
  }

  @override
  Widget build(BuildContext context) {
    Widget chapitreContainer = Container(
      margin: EdgeInsets.only(top: 10.0),
      alignment: Alignment.center,
      width: 120.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Text("Chapitre"),
          menuOptions("Algebre"),
          menuOptions("Analyse"),
          menuOptions("Probabilites"),
          menuOptions("Algorithmique"),
        ],
      ),
    );
    Widget leftMenuContainer = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Text("Math in Motion"),
          ),
          //FIXME: Acomodar para que sea un ROW con imagen y textfield para hacer busquedas
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 7.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            width: 120.0,
            height: 25.0,
            child: Text("SEARCH IN DEV"),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 7.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            width: 120.0,
            height: 25.0,
            child: Text("Terminale"),
          ),
          chapitreContainer,
        ],
      ),
    );
    Widget rightMenuContainer = Container(
      margin: EdgeInsets.only(left: 100.0),
      width: 500.0,
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          optionContent("title", "subtitle"),
          optionContent("title", "subtitle"),
          optionContent("title", "subtitle"),
        ],
      ),
    );

    Widget myWrap = Container(
      margin: EdgeInsets.only(left: 250.0),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.start,
        spacing: 5.0, //separacion segun el "direction" ,horizontal
        children: [
          leftMenuContainer,
          rightMenuContainer,
        ],
      ),
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          myWrap,
        ],
      ),
    );
  }
}
