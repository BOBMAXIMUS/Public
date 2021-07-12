import 'package:flutter/material.dart';
import 'package:pagina_web/my_activities.dart';

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
                  "Book a class Now",
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
        //    color: Colors.blue.shade800,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Colors.blue.shade800;
            currentContent = OtherTwo(
                "lib/assets/images/PlanAClassForLater.jpg", "SOME INPUT TEXT");
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
                  "Plan a class for later",
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
                "lib/assets/images/request_correction.jpg", "SOME INPUT TEXT");
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
        borderRadius: BorderRadius.circular(7),
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
            Text(
              "SOME TEXT INPUT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
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
        Expanded(flex: 2, child: rigthContainer),
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
                child: Text("SOME INPUT TEXT"),
              ),
            ],
          ),
        ),
        Container(
          height: 80.0,
          width: 80.0,
          child: Image(
            image: AssetImage("lib/assets/images/book_now.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Text("SOME INPUT TEXT"),
        ),
      ],
    );
  }
}

class OtherTwo extends StatelessWidget {
  String assetImage;
  String text;
  OtherTwo(this.assetImage, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          child: Image(
            image: AssetImage(assetImage),
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Text(text),
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
            width: 10.0,
            height: 10.0,
          ),
        ),
        DataCell(
          Container(
            width: 10.0,
            height: 10.0,
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
      alignment: Alignment.center,

      // color: Colors.indigo.shade300,
      width: double.infinity,
      // height: 200.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
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
              label: Text("Correction ID"),
            ),
            DataColumn(
              label: Text("Available since"),
            ),
          ],
          rows: [
            myDataRow(Colors.grey.shade300, "CC0001", "12h 10mn"),
            myDataRow(Colors.white, "CC0001", "12h 10mn"),
            myDataRow(Colors.grey.shade300, "CC0001", "12h 10mn"),
            myDataRow(Colors.white, "CC0001", "12h 10mn"),
          ],
        ),
      ),
    );

    return dataTable;
  }
}
