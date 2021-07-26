import 'package:flutter/material.dart';

class TeacherCorrectionCorrect extends StatefulWidget {
  @override
  _TeacherCorrectionCorrectState createState() =>
      _TeacherCorrectionCorrectState();
}

class _TeacherCorrectionCorrectState extends State<TeacherCorrectionCorrect> {
  final Widget arrow = Container(
    margin: EdgeInsets.only(top: 5.0),
    padding: EdgeInsets.only(top: 10.0),
    child: Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.green.shade400,
    ),
  );

  final EdgeInsets myPadding = EdgeInsets.only(
    left: 15.0,
    bottom: 2.5,
    top: 2.5,
    right: 5.0,
  );

  final SizedBox littleBox = SizedBox(
    width: 8.0,
  );

  myContainer(String asset, String text) {
    Widget banner = Container(
      width: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: myPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.only(top: 5.0),
            child: Image(
              image: AssetImage(asset),
              fit: BoxFit.fill,
            ),
          ),
          littleBox,
          Text(text)
        ],
      ),
    );
    return banner;
  }

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget allBanner = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 20.0, //separacion segun el "direction" ,horizontal
        runSpacing: 20.0, // separacion al momento de rodar
        children: [
          myContainer("lib/assets/images/uploadFileBlack.jpg", "View List"),
          arrow,
          myContainer("lib/assets/images/checkOut.jpg", "Estimate"),
          arrow,
          myContainer("lib/assets/images/resultBlack.jpg", "Correct"),
          arrow,
          myContainer("lib/assets/images/checkOut.jpg", "Earnings")
        ],
      ),
    );
    Widget defaultText = Container(
      margin: EdgeInsets.only(bottom: 55.0, top: 30),
      child: Text(
        "Good news!\nA student has validated your quote, you can now correct it",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );
    Widget timeLeft = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20.0),
      width: 300.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 100.0,
            child: Text("Time left:"),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            width: 200.0,
            height: 30.0,
            child: TextField(
                controller: myController, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
    Widget correctionID = Container(
      margin: EdgeInsets.only(right: 20.0),
      width: 300.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 100.0,
            child: Text("Correction ID"),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            width: 200.0,
            height: 30.0,
            child: TextField(
                controller: myController, textAlign: TextAlign.center),
          ),
        ],
      ),
    );

    Widget quoteText = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 5.0, top: 30.0),
      child: Text(
        "Quote info:",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );

    Widget myRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        timeLeft,
        correctionID,
      ],
    );
    Widget startCorrection = InkWell(
      onTap: () =>
          Navigator.pushReplacementNamed(context, "/teacherCorrectionUpload"),
      child: Container(
        width: 200.0,
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 40.0, top: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Colors.green,
        ),
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 7.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Container(
              child: Text(
                " Start correction",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
    Widget myRow2 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 5, child: SizedBox()),
        startCorrection,
        Expanded(flex: 5, child: SizedBox()),
      ],
    );

    Widget total = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(left: 114.0),
      alignment: Alignment.center,
      child: Text(
        "Total: 12.00 €",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
    Widget warningText = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Text(
        "Please be aware that if you correction is deemed unsatisfactory after review following a report, your account could be suspended.",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          allBanner,
          defaultText,
          myRow,
          quoteText,
          MyDataTable(),
          total,
          warningText,
          myRow2,
        ],
      ),
    );
  }
}

class MyDataTable extends StatelessWidget {
  myDataRow(Color color, String level, String quantity, String amount) {
    DataRow myDataRow = DataRow(
      color: MaterialStateColor.resolveWith((states) => color),
      cells: [
        DataCell(
          Text(level),
        ),
        DataCell(
          Text(quantity),
        ),
        DataCell(
          Text(amount),
        ),
      ],
    );

    return myDataRow;
  }

  @override
  Widget build(BuildContext context) {
    Widget dataTable = Container(
      margin: EdgeInsets.only(bottom: 15.0),
      alignment: Alignment.center,
      child: DataTable(
        dataRowHeight: 30,
        columnSpacing: 30,
        columns: [
          DataColumn(
            label: Container(
              child: Text("Question \nlevel"),
            ),
          ),
          DataColumn(
            label: Container(
              child: Text("Quantity"),
            ),
          ),
          DataColumn(
            label: Container(child: Text("Amount(€)")),
          ),
        ],
        rows: [
          myDataRow(Colors.grey.shade300, "1", "2", "1.00"),
          myDataRow(Colors.white, "2", "2", "2.00"),
          myDataRow(Colors.grey.shade300, "3", "2", "3.00"),
        ],
      ),
    );

    return dataTable;
  }
}
