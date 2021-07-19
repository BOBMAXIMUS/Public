import 'package:flutter/material.dart';

import '../../my_activities.dart';

class StudentMainPage extends StatefulWidget {
  @override
  _StudentMainPageState createState() => _StudentMainPageState();
}

class _StudentMainPageState extends State<StudentMainPage> {
  final TextStyle myStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 12.0,
  );

  Color currentColor = Colors.green.shade400;

  Widget currentContent = BookClassContent();

  @override
  Widget build(BuildContext context) {
    Widget bookClass = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        //  color: Colors.red,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Colors.green.shade400;
            currentContent = BookClassContent();
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/book_now.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Book a class now",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget planLater = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        color: Colors.red,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Colors.blue.shade800;
            currentContent = OtherTwo(
                "lib/assets/images/PlanAClassForLater.jpg",
                "Referencez vos disponibilites sur un calendrier pour planifier des cours",
                0);
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/PlanAClassForLater.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Book a class for later",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget clicknCorrect = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        //    color: Colors.teal,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Colors.pink.shade800;
            currentContent = OtherTwo(
                "lib/assets/images/request_correction.jpg",
                "Corrigez des exercices et fait toi de l'argent",
                1);
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/request_correction.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: Text(
                  "Click&Correct",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget mathsInMotion = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        //    color: Colors.teal,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Colors.indigo.shade900;
            currentContent = OtherTwo("lib/assets/images/MathsInMotion.jpg",
                "Revise tes cjapitres de maths avece des videos", 1);
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/MathsInMotion.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: Text(
                  "Maths in\nMotion",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget rowForMain = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 2, child: bookClass),
        Expanded(flex: 2, child: planLater),
        Expanded(flex: 2, child: clicknCorrect),
        Expanded(flex: 2, child: mathsInMotion),
      ],
    );
    Widget underLine = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
              height: 0.7,
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
    Widget allAppbar = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: rowForMain),
          underLine,
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: currentContent,
            ),
          )
        ],
      ),
    );
    Widget leftContainer = Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        color: currentColor,
      ),
      child: Center(child: allAppbar),
    );
    Widget dificultyBar = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 130.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(Icons.umbrella),
                  Text(
                    "Niveau de Fidelite",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.all(5.0),
              child: Image(
                image: AssetImage("lib/assets/images/dificulty_bar.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );

    Widget thridRow = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
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

    Row myRow = Row(
      children: [
        Expanded(flex: 1, child: SizedBox()),
        Expanded(flex: 3, child: leftContainer),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          myRow,
          thridRow,
          MyActivities(),
        ],
      ),
    );
  }
}

class BookClassContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 7,
                height: 7,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              //TODO: https://youtu.be/CpjfR5rG2lM   display menu
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Offline",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          // color: Colors.red,
          height: 100.0,
          width: 150.0,
          child: Image(
            image: AssetImage("lib/assets/images/book_now.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Text(
            "Selectionnez le statut 'Disponible' afin d'acceder a la liste de requetes",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class OtherTwo extends StatefulWidget {
  String assetImage;
  String text;
  int route;

  OtherTwo(this.assetImage, this.text, this.route);

  @override
  _OtherTwoState createState() => _OtherTwoState();
}

class _OtherTwoState extends State<OtherTwo> {
  //FIXME: unir el appbar con esta lista y usar el index para moverse entre las diferentes pantallas
  final List<Widget> widgetsChildren = [];
  @override
  Widget build(BuildContext context) {
    int num = widget.route;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          height: 80.0,
          width: 80.0,
          child: InkWell(
            onTap: () => widgetsChildren[num],
            child: Image(
              image: AssetImage(widget.assetImage),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
