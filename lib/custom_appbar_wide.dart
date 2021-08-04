import 'package:flutter/material.dart';
import 'package:frontend/book_class.dart';
import 'package:frontend/correction_stack.dart';
import 'package:frontend/pages/student_view/student_click_correct_upload.dart';
import 'package:frontend/pages/student_view/student_click_correct_upload_validation.dart';
import 'package:frontend/pages/student_view/student_difficulty_page.dart';
import 'package:frontend/pages/student_view/student_main_view.dart';
import 'package:frontend/pages/teacher_view/main_teacher_view.dart';
import 'package:frontend/pages/teacher_view/teacher_book_class.dart';
import 'package:frontend/pages/teacher_view/teacher_confirm_class.dart';
import 'package:frontend/pages/teacher_view/teacher_correction_correct.dart';
import 'package:frontend/pages/teacher_view/teacher_correction_estimate.dart';
import 'package:frontend/pages/teacher_view/teacher_correction_upload.dart';

import 'my_activities.dart';

class CustomAppbar extends StatefulWidget {
  Widget index;
  CustomAppbar(this.index);
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

final List<Widget> widgetsChildren = [
  //  BookClass(),
  //  HomePage(),
  //   CorrectionStack(),
  TeacherMainPage(),
  CorrectionStack(),
  TeacherBookClass(),
];

class _CustomAppbarState extends State<CustomAppbar> {
  int indexTap = 0;
  final pinkTextStyle = TextStyle(
    color: Color(0xffB71C8C),
    fontWeight: FontWeight.bold,
  );

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget aroLogo = Container(
      margin: EdgeInsets.only(top: 0.0),
      child: InkWell(
          onTap: () =>
              Navigator.pushReplacementNamed(context, "/teacherMainPages"),
          child: Container(
            height: 50.0,
            width: 70.0,
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
        onTap: () =>
            Navigator.pushReplacementNamed(context, "/teacherCorrectionStack"),
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
            Navigator.pushReplacementNamed(context, "/teacherMainPages"),
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
              Navigator.pushReplacementNamed(context, "/studentBookAClass"),
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
      height: 50.0,
      width: 50.0,
      margin: EdgeInsets.only(top: 5.0),
      child: Image(
        image: AssetImage("lib/assets/images/messages.jpg"),
        fit: BoxFit.fill,
        color: Color(0xffB71C8C),
      ),
    );

    Widget settings = Container(
      height: 50.0,
      width: 50.0,
      margin: EdgeInsets.only(top: 5.0),
      child: Image(
        image: AssetImage("lib/assets/images/settings.jpg"),
        fit: BoxFit.fill,
        color: Color(0xffB71C8C),
      ),
    );

    Widget underLine = Container(
      margin: EdgeInsets.only(top: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 16,
            child: Container(
              color: Color(0xffB71C8C),
              height: 1.5,
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );

    Widget allBanner = Container(
      transformAlignment: Alignment.center,
      //   color: Colors.tealAccent,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //  SizedBox(width: 100),
          Flexible(child: aroLogo),
          Flexible(child: clickCorrect),
          Flexible(child: myClassNow),
          Flexible(child: teachers),
          Flexible(child: avis),
          Flexible(child: search),
          Flexible(child: comments),
          Flexible(child: settings),
          //  SizedBox(width: 100),
        ],
      ),
    );
    Widget allAppbar = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [allBanner, underLine],
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
          children: [
            //FIXME: URGENTE! BUSCAR UNA MANERA DE MOVERTE ENTRE LAS DIFERENTES VISTAS DEL PROYECTO
            opacityContainer,
            widget.index,
            allAppbar,
          ],
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
    Widget rigthContainer = Container(
      margin: EdgeInsets.only(top: 23.0, left: 15.0),
      padding: EdgeInsets.all(5.0),
      // color: Colors.red,
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Feed de demandes etudiuantes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(
              //  height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.grey,
              ),
              child: MyDataTable(),
            ),
          ],
        ),
      ),
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
        rigthContainer,
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

//TODO: Modificar los valores de la tabla
class MyDataTable extends StatelessWidget {
  myDataRow(Color color, IconData status, String accessible, IconData type,
      String icon) {
    DataRow myDataRow = DataRow(
      color: MaterialStateColor.resolveWith((states) => color),
      cells: [
        DataCell(Icon(status)),
        DataCell(Text(accessible)),
        DataCell(
          Icon(type),
        ),
        DataCell(
          Text(icon),
        ),
      ],
    );

    return myDataRow;
  }

  @override
  Widget build(BuildContext context) {
    Widget dataTable = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.grey.shade200,
      ),
      alignment: Alignment.topLeft,
      height: 250.0,
      child: Expanded(
        child: DataTable(
          dataRowHeight: 30,
          columnSpacing: 30,
          columns: [
            DataColumn(
              label: Container(
                child: Text("Statut"),
              ),
            ),
            DataColumn(
              label: Container(
                padding: EdgeInsets.only(top: 20.0),
                width: 50.0,
                child: Column(
                  children: [
                    Flexible(
                        child: Text(
                      "Accessible\n depuis",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.w500),
                    ))
                  ],
                ),
              ),
            ),
            DataColumn(
              label: Container(child: Text("Type")),
            ),
            DataColumn(
              label: Container(child: Icon(Icons.ring_volume_outlined)),
            ),
          ],
          rows: [
            myDataRow(Colors.grey.shade300, Icons.refresh, "1min", Icons.search,
                "1ere"),
            myDataRow(
                Colors.white, Icons.refresh, "1min", Icons.search, "1ere"),
            myDataRow(Colors.grey.shade300, Icons.cancel, "1min", Icons.search,
                "1ere"),
            myDataRow(
                Colors.white, Icons.refresh, "1min", Icons.search, "Terminale"),
          ],
        ),
      ),
    );

    return dataTable;
  }
}
