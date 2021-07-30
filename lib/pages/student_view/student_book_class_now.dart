import 'package:flutter/material.dart';

class StudentBookClassNow extends StatefulWidget {
  @override
  _StudentBookClassNowState createState() => _StudentBookClassNowState();
}

class _StudentBookClassNowState extends State<StudentBookClassNow> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget upperText = Container(
      margin: EdgeInsets.only(top: 40.0, bottom: 20.0),
      alignment: Alignment.center,
      child: Text(
        "Book A Class Now!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
      ),
    );
    Widget iconContainer = Container(
      margin: EdgeInsets.only(bottom: 20.0),
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("lib/assets/images/book_now.jpg"),
            fit: BoxFit.fill,
            color: Colors.green.shade600,
          ),
        ],
      ),
    );
    Widget materiaField = Container(
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("Matiere"),
          ),
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              height: 30.0,
              child: TextField(
                  controller: myController, textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
    Widget coursDurationField = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("Duree du cours"),
          ),
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              height: 30.0,
              child: TextField(
                  controller: myController, textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
    Widget paidField = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("Vous paierez"),
          ),
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              height: 30.0,
              child: TextField(
                  controller: myController, textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
    Widget codePromoField = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("Code Promo"),
          ),
          Flexible(
            flex: 3,
            child: Container(
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              height: 30.0,
              child: TextField(
                  controller: myController, textAlign: TextAlign.center),
            ),
          ),
          Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(
                    "Verifier code",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
    Widget allInfoField = Container(
      child: Column(
        children: [
          materiaField,
          coursDurationField,
          codePromoField,
          paidField,
        ],
      ),
    );
    Widget restantCreditButtom = Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.pink.shade900,
      ),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(
            context, "/studentBookAClassPaidment"),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Passer au reglement",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    Widget rowButtoms = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          restantCreditButtom,
        ],
      ),
    );

    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          upperText,
          iconContainer,
          allInfoField,
          rowButtoms,
        ],
      ),
    );
  }
}
