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

  myContainer(IconData icon, String text) {
    Widget banner = Container(
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: myPadding,
      //FIXME: implementar este row con el otro banner que tengo
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.black, size: 34.0),
          littleBox,
          Text(text)
        ],
      ),
    );
    return banner;
  }

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
          myContainer(Icons.download_outlined, "View List"),
          arrow,
          myContainer(Icons.credit_card, "Estimate"),
          arrow,
          myContainer(Icons.fact_check_outlined, "Correct"),
          arrow,
          myContainer(Icons.credit_card, "Earnings")
        ],
      ),
    );

//FIXME: Crear clase para recibir los parametros de la tabla, da sida esta pls.
    Widget dataTable = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
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
            DataRow(
              color: MaterialStateColor.resolveWith(
                  (states) => Colors.grey.shade300),
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
                  Text("CC0001"),
                ),
                DataCell(
                  Text("12h 10mn"),
                ),
                DataCell(
                  Icon(
                    Icons.info_outline,
                    color: Colors.red,
                  ),
                ),
                DataCell(
                  Text("12th"),
                ),
                DataCell(
                  Container(
                    width: 24.0,
                    height: 24.0,
                  ),
                ),
                DataCell(
                  Icon(Icons.search),
                ),
                DataCell(
                  Icon(Icons.tag),
                ),
              ],
            ),
            DataRow(
              color: MaterialStateColor.resolveWith((states) => Colors.white),
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
                  Text("CC0001"),
                ),
                DataCell(
                  Text("12h 10mn"),
                ),
                DataCell(
                  Icon(
                    Icons.info_outline,
                    color: Colors.red,
                  ),
                ),
                DataCell(
                  Text("12th"),
                ),
                DataCell(
                  Container(
                    width: 24.0,
                    height: 24.0,
                  ),
                ),
                DataCell(
                  Icon(Icons.search),
                ),
                DataCell(
                  Icon(Icons.tag),
                ),
              ],
            ),
            DataRow(
              color: MaterialStateColor.resolveWith(
                  (states) => Colors.grey.shade300),
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
                  Text("CC0001"),
                ),
                DataCell(
                  Text("12h 10mn"),
                ),
                DataCell(
                  Icon(
                    Icons.info_outline,
                    color: Colors.red,
                  ),
                ),
                DataCell(
                  Text("12th"),
                ),
                DataCell(
                  Container(
                    width: 24.0,
                    height: 24.0,
                  ),
                ),
                DataCell(
                  Icon(Icons.search),
                ),
                DataCell(
                  Icon(Icons.tag),
                ),
              ],
            ),
            DataRow(
              color: MaterialStateColor.resolveWith((states) => Colors.white),
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
                  Text("CC0001"),
                ),
                DataCell(
                  Text("12h 10mn"),
                ),
                DataCell(
                  Icon(
                    Icons.info_outline,
                    color: Colors.red,
                  ),
                ),
                DataCell(
                  Text("12th"),
                ),
                DataCell(
                  Container(
                    width: 24.0,
                    height: 24.0,
                  ),
                ),
                DataCell(
                  Icon(Icons.search),
                ),
                DataCell(
                  Icon(Icons.tag),
                ),
              ],
            ),
            DataRow(
              color: MaterialStateColor.resolveWith(
                  (states) => Colors.grey.shade300),
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
                  Text("CC0001"),
                ),
                DataCell(
                  Text("12h 10mn"),
                ),
                DataCell(
                  Icon(
                    Icons.info_outline,
                    color: Colors.red,
                  ),
                ),
                DataCell(
                  Text("12th"),
                ),
                DataCell(
                  Container(
                    width: 24.0,
                    height: 24.0,
                  ),
                ),
                DataCell(
                  Icon(Icons.search),
                ),
                DataCell(
                  Icon(Icons.tag),
                ),
              ],
            ),
          ],
        ),
      ),
    );

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
