import 'package:flutter/material.dart';

//FIXME: hacer que reciba parametros para el numero de containers, un icono y el texto
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
      //FIXME: El flexible esta mal implementado
      child: Flexible(
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
      //FIXME: El flexible esta mal implementado
      child: Flexible(
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
      //FIXME: El flexible esta mal implementado
      child: Flexible(
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
