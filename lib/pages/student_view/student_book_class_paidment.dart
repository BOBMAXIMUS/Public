import 'package:flutter/material.dart';

class StudentBookClassPaidment extends StatefulWidget {
  @override
  _StudentBookClassPaidmentState createState() =>
      _StudentBookClassPaidmentState();
}

class _StudentBookClassPaidmentState extends State<StudentBookClassPaidment> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget upperText = Container(
      child: Text(
        '''
        You're just one step away
          ill ne vous reste plus qua payer pour votre cours!
          si jamais vous deviez interrompre la recherche de cours apres
          avoir paye, votre prochain cours pourra etre paye avece
          les credits recus en compensations.
      ''',
        textAlign: TextAlign.center,
      ),
    );
    Widget creditCardButtom = Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.pink.shade900,
      ),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 7.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Icon(Icons.card_giftcard, color: Colors.white),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Utiliser ma carte enregistree",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
    Widget restantCreditButtom = Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.indigo.shade900,
      ),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "utiliser des credits (23.70€ restants)",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    Widget rowButtoms = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          creditCardButtom,
          Container(
            width: 20,
            height: 20,
            color: Colors.amber,
          ),
          restantCreditButtom,
        ],
      ),
    );
    Widget rowIcons = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            color: Colors.amber,
          ),
          SizedBox(width: 40),
          Container(
            width: 20,
            height: 20,
            color: Colors.amber,
          ),
        ],
      ),
    );
    Widget ouText = Container(
        margin: EdgeInsets.symmetric(vertical: 7.5),
        alignment: Alignment.center,
        child: Text("Ou"));
    Widget cardNumberField = Container(
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("Numero de carte"),
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
    Widget expirationDateField = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("Date d'expiration"),
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
    Widget cvvField = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text("CVV"),
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
          cardNumberField,
          expirationDateField,
          cvvField,
          codePromoField,
        ],
      ),
    );
    Widget registerCardInfo = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(right: 10.0),
                width: 30.0,
                height: 30.0,
              )),
          Container(
            child: Text("Enregistrer ma carte"),
          ),
        ],
      ),
    );
    Widget valididateReserveButtom = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            shape: BoxShape.rectangle,
            color: Colors.pink.shade900,
          ),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: InkWell(
            onTap: () => Navigator.pushReplacementNamed(
                context, "/studentSearchTeacher"),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Valider et reserver le cours!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );

    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          upperText,
          rowButtoms,
          rowIcons,
          ouText,
          allInfoField,
          registerCardInfo,
          valididateReserveButtom,
        ],
      ),
    );
  }
}
