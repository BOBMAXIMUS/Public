import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  Icon arrow = Icon(
    Icons.arrow_forward_ios_rounded,
    color: Colors.green.shade400,
  );

  SizedBox littleBox = SizedBox(
    width: 8.0,
  );
  @override
  Widget build(BuildContext context) {
    Widget uploadBaner = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.green.shade600,
      ),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.download_outlined), littleBox, Text("Upload")],
      ),
    );

    Widget checkoutBaner = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.credit_card_outlined),
          littleBox,
          Text("Checkout")
        ],
      ),
    );

    Widget resultsBaner = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.fact_check_outlined),
          littleBox,
          Text("Results!")
        ],
      ),
    );

    Container allBanner = Container(
      margin: EdgeInsets.symmetric(vertical: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: uploadBaner,
            flex: 1,
          ),
          arrow,
          Flexible(
            child: checkoutBaner,
            flex: 1,
          ),
          arrow,
          Flexible(
            child: resultsBaner,
            flex: 1,
          ),
        ],
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        allBanner,
      ],
    );
  }
}
