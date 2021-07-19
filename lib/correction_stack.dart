import 'package:flutter/material.dart';

class CorrectionStack extends StatelessWidget {
  final Widget arrow = Container(
    margin: EdgeInsets.only(top: 5.0),
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
        borderRadius: BorderRadius.circular(7),
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

  myDataRow(Color color, String correctionID, String available, IconData urgent,
      int level, IconData view, IconData correct) {
    DataRow myDataRow = DataRow(
      color: MaterialStateColor.resolveWith((states) => color),
      cells: [
        DataCell(
          Container(
            width: 24.0,
            height: 24.0,
          ),
        ),
        DataCell(
          Container(
            width: 24.0,
            height: 24.0,
          ),
        ),
        DataCell(
          Text(correctionID),
        ),
        DataCell(
          Text(available),
        ),
        DataCell(
          Icon(
            urgent,
            color: Colors.red,
          ),
        ),
        DataCell(
          Text(level.toString() + "th"),
        ),
        DataCell(
          Container(
            width: 24.0,
            height: 24.0,
          ),
        ),
        DataCell(
          Icon(view),
        ),
        DataCell(
          Icon(correct),
        ),
      ],
    );

    return myDataRow;
  }

  //TODO: Se crean otro controles para diferentes inputs?
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

    Widget dataTable = Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: 20.0, top: 2.0, bottom: 2.0),
              width: 115.0,
              height: 13.0,
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.search,
                      size: 12.0,
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 20.0,
                    child: TextField(
                        controller: myController, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                    label: Text("Correction ID"),
                  ),
                  DataColumn(
                    label: Text("Available since"),
                  ),
                  DataColumn(
                    label: Text("Urgent!"),
                  ),
                  DataColumn(
                    label: Text("Level"),
                  ),
                  DataColumn(
                    label: Text("Invalid flag"),
                  ),
                  DataColumn(
                    label: Text("View"),
                  ),
                  DataColumn(
                    label: Text("Correct"),
                  ),
                ],
                rows: [
                  myDataRow(Colors.grey.shade300, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.white, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.grey.shade300, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.white, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.grey.shade300, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.white, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.grey.shade300, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                  myDataRow(Colors.white, "CC0001", "12h 10mn",
                      Icons.info_outline, 12, Icons.search, Icons.tag),
                ],
              ),
            ),
          ],
        ));
    return Padding(
      padding: const EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          stackText,
          allBanner,
          dataTable,
        ],
      ),
    );
  }
}
