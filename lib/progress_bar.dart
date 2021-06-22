import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  Icon arrow = Icon(
    Icons.arrow_forward_ios_rounded,
    color: Colors.green.shade400,
  );

  EdgeInsets myPadding = EdgeInsets.only(
    left: 15.0,
    bottom: 2.5,
    top: 2.5,
    right: 5.0,
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
      padding: myPadding,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.download_outlined, color: Colors.white, size: 34.0),
            littleBox,
            Text("Upload")
          ],
        ),
      ),
    );

    Widget checkoutBaner = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: myPadding,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.credit_card_outlined, color: Colors.black, size: 34.0),
            littleBox,
            Text("Checkout")
          ],
        ),
      ),
    );

    Widget resultsBaner = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: myPadding,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.fact_check_outlined, color: Colors.black, size: 34.0),
            littleBox,
            Text("Results!")
          ],
        ),
      ),
    );

    Container allBanner = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          uploadBaner,
          arrow,
          checkoutBaner,
          arrow,
          resultsBaner,
        ],
      ),
    );

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10.0,
          ),
          child: allBanner,
        ),
      ],
    );
  }
}
