import 'package:flutter/material.dart';

import '../../my_activities.dart';

class CustomStudentAppbar extends StatefulWidget {
  Widget index;
  CustomStudentAppbar(this.index);
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomStudentAppbar> {
  final pinkTextStyle = TextStyle(
      color: Color(0xffB71C8C), fontWeight: FontWeight.bold, fontSize: 11);

  @override
  Widget build(BuildContext context) {
    Widget aroLogo = Container(
      margin: EdgeInsets.only(top: 0.0),
      child: InkWell(
          onTap: () =>
              Navigator.pushReplacementNamed(context, "/studentMainPage"),
          child: Container(
            height: 40.0,
            width: 50.0,
            margin: EdgeInsets.only(top: 5.0),
            child: Image(
              image: AssetImage("lib/assets/images/aroLogo.jpg"),
              fit: BoxFit.fitWidth,
            ),
          )),
    );

    Widget clickCorrect = Container(
      margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(
            context, "/studentClickCorrectUpload"),
        child: Text(
          "CLICK&CORRECT",
          style: pinkTextStyle,
        ),
      ),
    );

    Widget myClassNow = Container(
      margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/studentBookAClassNow"),
        child: Text(
          "MYCLASSNOW",
          style: pinkTextStyle,
        ),
      ),
    );

    Widget avis = Container(
      margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      child: Text("AVIS", style: pinkTextStyle),
    );
    Widget teachers = Container(
      margin: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () =>
              Navigator.pushReplacementNamed(context, "/studentSearchTeacher"),
          child: Text("PROFESSEURS", style: pinkTextStyle)),
    );

    Widget search = Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Icon(
        Icons.search,
        color: Color(0xffB71C8C),
      ),
    );

    Widget comments = Container(
      height: 40.0,
      width: 50.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Image(
        image: AssetImage("lib/assets/images/messages.jpg"),
        fit: BoxFit.fitHeight,
        color: Color(0xffB71C8C),
      ),
    );

    Widget settings = Container(
      height: 40.0,
      width: 50.0,
      margin: EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/studentPersonalTable"),
        child: Image(
          image: AssetImage("lib/assets/images/settings.jpg"),
          fit: BoxFit.fitHeight,
          color: Color(0xffB71C8C),
        ),
      ),
    );

    Widget underLine = Container(
      margin: EdgeInsets.only(top: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              color: Color(0xffB71C8C),
              height: 1.5,
            ),
          ),
        ],
      ),
    );

    Widget allBanner = Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      transformAlignment: Alignment.center,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: LimitedBox(
        maxWidth: MediaQuery.of(context).size.width * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(child: aroLogo),
                Flexible(child: clickCorrect),
                Flexible(child: myClassNow),
                Flexible(child: teachers),
                Flexible(child: avis),
                Flexible(child: search),
                Flexible(child: comments),
                Flexible(child: settings),
              ],
            ),
            Flexible(child: underLine),
          ],
        ),
      ),
    );
    Widget opacityContainer = Opacity(
      opacity: 0.8,
      child: Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    );

    Widget backgroundImage = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/purple_paper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [opacityContainer, widget.index, allBanner],
        ),
        minimum: EdgeInsets.all(25.0),
      ),
    );

    return Scaffold(
      body: backgroundImage,
    );
  }
}

class TeacherMainPage extends StatefulWidget {
  @override
  _TeacherMainPageState createState() => _TeacherMainPageState();
}

class _TeacherMainPageState extends State<TeacherMainPage> {
  final TextStyle myStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 12.0,
  );

  Color currentColor = Color(0xff4CAE7D);

  Widget currentContent = BookClassContent();

  @override
  Widget build(BuildContext context) {
    Widget bookClass = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xff4CAE7D);
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
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xff2C4997);
            currentContent = OtherTwo(
                "lib/assets/images/PlanAClassForLater.jpg",
                "Referencez vos disponibilites sur un calendrier pour planifier des cours",
                "/teacherBookClass");
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
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        //    color: Colors.teal,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xffB71C8C);
            currentContent = OtherTwo(
                "lib/assets/images/request_correction.jpg",
                "Corrigez des exercices et fait toi de l'argent",
                "/teacherCorrectionStack");
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

    Widget rowForMain = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 2, child: bookClass),
        Expanded(flex: 2, child: planLater),
        Expanded(flex: 2, child: clicknCorrect),
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
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: currentColor,
      ),
      child: Center(child: allAppbar),
    );
    Widget dificultyBar = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            child: Text(
              "Niveau de Fidelite",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            height: 50.0,
            width: 450.0,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/dificulty_bar.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );

    Widget thridRow = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            child: dificultyBar,
            flex: 3,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );

    Row myRow = Row(
      children: [
        Expanded(flex: 1, child: SizedBox()),
        Expanded(flex: 2, child: leftContainer),
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
  String route;

  OtherTwo(this.assetImage, this.text, this.route);

  @override
  _OtherTwoState createState() => _OtherTwoState();
}

class _OtherTwoState extends State<OtherTwo> {
  //FIXME: unir el appbar con esta lista y usar el index para moverse entre las diferentes pantallas

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          child: InkWell(
            onTap: () => Navigator.pushReplacementNamed(context, widget.route),
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
