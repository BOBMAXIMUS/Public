import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget uploadBaner = Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.green.shade200,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.download_outlined), Text("Upload")],
      ),
    );

    Widget checkoutBaner = Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.green.shade200,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.credit_card_outlined), Text("Checkout")],
      ),
    );

    Widget resultsBaner = Container(
      padding: EdgeInsets.all(5.0),
      color: Colors.green.shade200,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [Icon(Icons.fact_check_outlined), Text("Results!")],
      ),
    );

    Container allBanner = Container(
      margin: EdgeInsets.symmetric(vertical: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [uploadBaner, checkoutBaner, resultsBaner],
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
