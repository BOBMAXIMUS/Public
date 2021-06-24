import 'package:flutter/material.dart';

class CorrectionStack extends StatelessWidget {
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

  Widget MyContainer(IconData icon, String text) {
    Widget banner = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: myPadding,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      //FIXME: El flexible esta mal implementado
      child: Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.black, size: 34.0),
            littleBox,
            Text(text)
          ],
        ),
      ),
    );
    return banner;
  }

  @override
  Widget build(BuildContext context) {
    Container allBanner = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyContainer(Icons.download_outlined, "View List"),
          arrow,
          MyContainer(Icons.credit_card, "Estimate"),
          arrow,
          MyContainer(Icons.fact_check_outlined, "Correct"),
          arrow,
          MyContainer(Icons.credit_card, "Earnings")
        ],
      ),
    );

    //FIXME: Mejor tabla con parametros, here's a video https://youtu.be/D6yndJ_lk14

    return Padding(
      padding: const EdgeInsets.only(top: 89.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
            ),
            child: allBanner,
          ),
        ],
      ),
    );
  }
}
