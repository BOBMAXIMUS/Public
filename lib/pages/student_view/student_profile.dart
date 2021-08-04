import 'package:flutter/material.dart';

class StudentProfileView extends StatelessWidget {
  Widget contentText = Container(
    height: 600.0,
    width: 300.0,
    margin: EdgeInsets.only(top: 70.0, right: 15.0, left: 5.0),
    padding: EdgeInsets.all(5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Settings",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Container(
              height: 40.0,
              width: 180.0,
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xff12133C),
              ),
              child: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Container(
              height: 40.0,
              width: 180.0,
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xff12133C),
              ),
              child: Text(
                "Coordonness banquaires",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              //TODO: Insert here some func xd
            },
            child: Container(
              height: 40.0,
              width: 180.0,
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xff12133C),
              ),
              child: Text(
                "Historique transactions",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ],
    ),
  );
  final myController = TextEditingController();
  Widget MyDataField(String label) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 140.0,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(bottom: 13.0),
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              height: 30.0,
              child: TextField(
                controller: myController,
                textAlign: TextAlign.left,
                /*     decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, right: 15),
                    hintText: "xx/xx/xxxx"),*/
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget underLine = Container(
      width: 450.0,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      height: 1.5,
      child: Container(
        color: Color(0xff12133C),
      ),
    );

    Widget profileText = Container(
      margin: EdgeInsets.only(top: 70.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 30.0,
            width: 25,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/EditInfo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff12133C),
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    Widget bankInfoText = Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 30.0,
            width: 25,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/EditInfo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Coordonnees banquaires",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff12133C),
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    Widget transactionsHistoryText = Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 30.0,
            width: 25,
            margin: EdgeInsets.all(5.0),
            child: Image(
              image: AssetImage("lib/assets/images/EditInfo.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Historique transactions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff12133C),
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

    Widget saveInfoButtom = Container(
      width: 200.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Color(0xffB71C8C),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "mettre à jour données",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    //FIXME: Acomodar el HitText de cada field
    Widget allInfoField = LimitedBox(
      maxWidth: 100.0,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            profileText,
            MyDataField("User ID"),
            MyDataField("Prenom"),
            MyDataField("Nom"),
            MyDataField("Classe"),
            MyDataField("N° telephone"),
            MyDataField("Adresse mail"),
            MyDataField("Mot de passe"),
            LimitedBox(maxWidth: 120.0, child: saveInfoButtom),
            underLine,
            bankInfoText,
            underLine,
            transactionsHistoryText,
          ],
        ),
      ),
    );

    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runSpacing: 5.0, // separacion al momento de rodar
      children: [contentText, allInfoField],
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          adjuntExamples,
        ],
      ),
    );
  }
}
