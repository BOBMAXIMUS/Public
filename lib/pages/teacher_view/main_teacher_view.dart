import 'package:flutter/material.dart';
import 'package:frontend/correction_stack.dart';
import 'package:frontend/my_activities.dart';
import 'package:frontend/pages/teacher_view/teacher_book_class.dart';
import 'package:frontend/widgets/dropdown_widget.dart';

class TeacherMainPages extends StatefulWidget {
  @override
  _TeacherMainPagesState createState() => _TeacherMainPagesState();
}

class _TeacherMainPagesState extends State<TeacherMainPages> {
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: rowForMain),
          underLine,
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 5.0),
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
                "STUDEN's FEED",
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

class BookClassContent extends StatefulWidget {
  @override
  _BookClassContentState createState() => _BookClassContentState();
}

class _BookClassContentState extends State<BookClassContent> {
  var _items = ["Offline", "Online"];
  var _selected = "Offline";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
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
              Container(
                width: 80,
                height: 50,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  value: _selected,
                  items: _items
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selected = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80.0,
          width: 150.0,
          child: Image(
            image: AssetImage("lib/assets/images/book_now_simple.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Text(
            "Selectionnez le statut 'Disponible' afin d'acceder a la liste de requetes",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
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
  final List<Widget> widgetsChildren = [
    TeacherBookClass(),
    CorrectionStack(),
  ];
  @override
  Widget build(BuildContext context) {
    int num = widget.route;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
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

//TODO: Modificar los valores de la tabla
class MyDataTable extends StatelessWidget {
  myDataRow(Color color, String correctionID, String available) {
    DataRow myDataRow = DataRow(
      color: MaterialStateColor.resolveWith((states) => color),
      cells: [
        DataCell(
          Container(
            width: 5.0,
            height: 5.0,
          ),
        ),
        DataCell(
          Container(
            width: 5.0,
            height: 5.0,
          ),
        ),
        DataCell(
          Text(correctionID),
        ),
        DataCell(
          Text(available),
        ),
      ],
    );

    return myDataRow;
  }

  @override
  Widget build(BuildContext context) {
    Widget dataTable = Container(
      alignment: Alignment.topLeft,
      color: Colors.grey.shade200,
      height: 250.0,
      child: Expanded(
        child: DataTable(
          dataRowHeight: 30,
          columnSpacing: 30,
          columns: [
            DataColumn(
              label: Container(
                child: Icon(Icons.search),
              ),
            ),
            DataColumn(
              label: Container(
                child: Icon(Icons.refresh),
              ),
            ),
            DataColumn(
              label: Container(child: Text("Type")),
            ),
            DataColumn(
              label: Container(child: Text("Since")),
            ),
          ],
          rows: [
            myDataRow(Colors.grey.shade300, "4 min", "terminate"),
            myDataRow(Colors.white, "4 min", "terminate"),
            myDataRow(Colors.grey.shade300, "4 min", "terminate"),
            myDataRow(Colors.white, "4 min", "terminate"),
          ],
        ),
      ),
    );

    return dataTable;
  }
}
