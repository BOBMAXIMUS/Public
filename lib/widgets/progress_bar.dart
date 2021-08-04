import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
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
          myContainer("lib/assets/images/uploadFileBlack.jpg", "Upload",
              Color(0xff4CAE7D), Colors.white),
          arrow,
          myContainer("lib/assets/images/checkOut.jpg", "Checkout",
              Colors.white, Colors.black),
          arrow,
          myContainer("lib/assets/images/resultBlack.jpg", "Results!",
              Colors.white, Color(0xff4CAE7D)),
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
