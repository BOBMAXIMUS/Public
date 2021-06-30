import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final Icon arrow = Icon(
    Icons.arrow_forward_ios_rounded,
    color: Colors.green.shade400,
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
      width: 125.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: myPadding,
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
    Widget allBanner = Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 20.0, //separacion segun el "direction" ,horizontal
        runSpacing: 20.0, // separacion al momento de rodar
        children: [
          myContainer(Icons.download_outlined, "Upload"),
          arrow,
          myContainer(Icons.credit_card_outlined, "Checkout"),
          arrow,
          myContainer(Icons.fact_check_outlined, "Results!")
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      child: allBanner,
    );
  }
}
