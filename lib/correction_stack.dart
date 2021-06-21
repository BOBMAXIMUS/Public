import 'package:flutter/material.dart';

class CorrectionStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget viewListBaner = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.download_outlined), Text("View List")],
      ),
    );

    Widget estimateBaner = Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.credit_card), Text("Estimate")],
      ),
    );

    Widget correctBaner = Container(
      color: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.fact_check_outlined), Text("Correct")],
      ),
    );

    Widget earningsBaner = Container(
      color: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.credit_card), Text("Earnings")],
      ),
    );

    Container allBanner = Container(
      margin: EdgeInsets.symmetric(vertical: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          viewListBaner,
          estimateBaner,
          correctBaner,
          earningsBaner,
        ],
      ),
    );

    //TODO: Crear la tabla, here's a video https://youtu.be/D6yndJ_lk14

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        allBanner,
      ],
    );
  }
}
