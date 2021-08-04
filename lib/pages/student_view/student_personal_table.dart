import 'package:flutter/material.dart';

class StudentPersonalTable extends StatelessWidget {
  final Widget arrow = Container(
    margin: EdgeInsets.only(top: 15.0),
    child: Icon(
      Icons.arrow_forward_ios_rounded,
      color: Color(0xff4CAE7D),
      size: 30.0,
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

  myDataRow(Color color, String date, String correctionID, IconData status,
      IconData urgent, String materia, IconData view, IconData correct) {
    DataRow myDataRow = DataRow(
      color: MaterialStateColor.resolveWith((states) => color),
      cells: [
        DataCell(
          Container(
            child: Text(date),
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
          Icon(
            status,
            color: Color(0xff4CAE7D),
          ),
        ),
        DataCell(
          Icon(
            urgent,
            color: Colors.red,
          ),
        ),
        DataCell(
          Text(materia),
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

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget upperText = Container(
      margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
      alignment: Alignment.center,
      child: Text(
        "Tableau de suivi",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
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
          myContainer("lib/assets/images/uploadFileBlack.jpg", "View list",
              Color(0xff4CAE7D), Colors.white),
          arrow,
          InkWell(
            onTap: () =>
                Navigator.pushReplacementNamed(context, "/studentProfileView"),
            child: myContainer("lib/assets/images/Profile.jpg", "Profile",
                Colors.white, Colors.black),
          ),
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
                    label: Text("Date"),
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
                    label: Text("Statut"),
                  ),
                  DataColumn(
                    label: Text("Urgent!"),
                  ),
                  DataColumn(
                    label: Text("Matiere"),
                  ),
                  DataColumn(
                    label: Text("Invalid flag"),
                  ),
                  DataColumn(
                    label: Text("View"),
                  ),
                  DataColumn(
                    label: Text("Correction"),
                  ),
                ],
                rows: [
                  myDataRow(
                      Colors.grey.shade300,
                      "06/22/21",
                      "CC0001",
                      Icons.check,
                      Icons.info_outline,
                      "Maths",
                      Icons.search,
                      Icons.tag),
                  myDataRow(Colors.white, "06/22/21", "CC0001", Icons.check,
                      Icons.info_outline, "Maths", Icons.search, Icons.tag),
                  myDataRow(
                      Colors.grey.shade300,
                      "06/22/21",
                      "CC0001",
                      Icons.check,
                      Icons.info_outline,
                      "Maths",
                      Icons.search,
                      Icons.tag),
                  myDataRow(Colors.white, "06/22/21", "CC0001", Icons.check,
                      Icons.info_outline, "Maths", Icons.search, Icons.tag),
                  myDataRow(
                      Colors.grey.shade300,
                      "06/22/21",
                      "CC0001",
                      Icons.check,
                      Icons.info_outline,
                      "Maths",
                      Icons.search,
                      Icons.tag),
                  myDataRow(Colors.white, "06/22/21", "CC0001", Icons.check,
                      Icons.info_outline, "Maths", Icons.search, Icons.tag),
                ],
              ),
            ),
          ],
        ));
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          upperText,
          allBanner,
          dataTable,
        ],
      ),
    );
  }
}
