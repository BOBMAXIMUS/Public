import 'package:flutter/material.dart';

class StudentDifficultyPage extends StatefulWidget {
  @override
  _StudentDifficultyPageState createState() => _StudentDifficultyPageState();
}

String lorem =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

class _StudentDifficultyPageState extends State<StudentDifficultyPage> {
  Widget promoContainer() {
    Widget number = Column(
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          margin:
              EdgeInsets.only(top: 20.0, bottom: 10.0, left: 40.0, right: 40.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {},
            child: null,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 30.0),
          child: Text(
            "Des codes promo",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );

    Widget manyRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [number, number, number],
    );
    return manyRow;
  }

  @override
  Widget build(BuildContext context) {
    Widget dificultyBar = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/studentMainPage"),
        child: Container(
          height: 50.0,
          width: double.infinity,
          margin: EdgeInsets.all(5.0),
          child: Image(
            image: AssetImage("lib/assets/images/dificulty_bar.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    Widget thridRow = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 130.0),
          Expanded(
            child: dificultyBar,
            flex: 1,
          ),
          SizedBox(width: 130.0),
        ],
      ),
    );
    Widget leftImage = Container(
      height: 280.0,
      width: 300.0,
      margin: EdgeInsets.all(5.0),
      child: Image(
        image: AssetImage("lib/assets/images/idle_rocket.jpg"),
        fit: BoxFit.scaleDown,
      ),
    );
    Widget rightImage = Container(
      width: 300.0,
      height: 280.0,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 15.0),
            child: Text(
              "Comment ca marche?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Text(lorem)
        ],
      ),
    );
    Widget adjuntExamples = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        runSpacing: 5.0, // separacion al momento de rodar
        spacing: 10.0, //separacion por margenes
        children: [leftImage, rightImage],
      ),
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          thridRow,
          adjuntExamples,
          promoContainer(),
        ],
      ),
    );
  }
}
