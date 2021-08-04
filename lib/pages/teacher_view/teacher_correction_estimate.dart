import 'package:flutter/material.dart';

class CorrectionEstimate extends StatefulWidget {
  @override
  _CorrectionEstimateState createState() => _CorrectionEstimateState();
}

class _CorrectionEstimateState extends State<CorrectionEstimate> {
  final Widget arrow = Container(
    margin: EdgeInsets.only(top: 5.0),
    padding: EdgeInsets.only(top: 10.0),
    child: Icon(
      Icons.arrow_forward_ios_rounded,
      color: Color(0xff4CAE7D),
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

  myContainer(String asset, String text, Color color, Color iconColor) {
    Widget banner = Container(
      width: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: color,
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
              color: iconColor,
            ),
          ),
          littleBox,
          Text(text)
        ],
      ),
    );
    return banner;
  }

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

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget stackText = Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
      child: Text(
        "Correction stack",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    Widget allBanner = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 20.0, //separacion segun el "direction" ,horizontal
        runSpacing: 20.0, // separacion al momento de rodar
        children: [
          myContainer("lib/assets/images/uploadFileBlack.jpg", "View List",
              Colors.white, Colors.black),
          arrow,
          myContainer("lib/assets/images/checkOut.jpg", "Estimate",
              Color(0xff4CAE7D), Colors.white),
          arrow,
          myContainer("lib/assets/images/resultBlack.jpg", "Correct",
              Colors.white, Colors.black),
          arrow,
          myContainer("lib/assets/images/checkOut.jpg", "Earnings",
              Colors.white, Colors.black)
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
            height: 20.0,
            child: TextField(
                controller: myController, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
    Widget viewCorrection = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xff4CAE7D),
      ),
      width: 140.0,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              child: Icon(Icons.search, size: 25, color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text("View correction"),
            ),
          ],
        ),
      ),
    );

    Widget correctionView = Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: correctionID),
          Flexible(child: viewCorrection),
        ],
      ),
    );
    Widget additionalsDetails = Container(
      margin: EdgeInsets.only(right: 20.0, bottom: 30.0),
      width: 440.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Text("Additionals details"),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            width: 300.0,
            height: 30.0,
            child: TextField(
                controller: myController, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
    Widget whatToEarn = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 30.0),
      width: 440.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 230.0,
            child: Text("What i can earn from this correction"),
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

    Widget validateNSeend = InkWell(
      onTap: () =>
          Navigator.pushReplacementNamed(context, "/teacherCorrectionCorrect"),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Color(0xffB71C8C),
        ),
        width: 200.0,
        height: 50.0,
        alignment: Alignment.center,
        child: Text(
          "Validate and send quote",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    Widget defaultText = Container(
      margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
      child: Text(
        "Please be aware that an overestimated quote can make a student search for other methods to get his correction.\n\nBe careful, quotes are regularly checked by admins to ensure that they are clear, valid an respect the terms of service.\nIf yot quotes are ever invalid, you may run the risk of having your account suspended.",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );
    Widget column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        additionalsDetails,
        whatToEarn,
        validateNSeend,
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

    return Padding(
      padding: const EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          stackText,
          allBanner,
          correctionView,
          MyDataTable(),
          total,
          column,
          defaultText,
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
