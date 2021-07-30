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
      padding: EdgeInsets.only(top: 40.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: "You're just one step away\n\n",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          TextSpan(
            text: '''
          ill ne vous reste plus qua payer pour votre cours!
          si jamais vous deviez interrompre la recherche de cours apres
          avoir paye, votre prochain cours pourra etre paye avece
          les credits recus en compensations.
          ''',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );

    Widget creditCardButtom = Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.pink.shade900,
      ),
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: FittedBox(
                fit: BoxFit.none,
                child: Container(
                  height: 50,
                  child: Image(
                    image: AssetImage("lib/assets/images/checkOut.jpg"),
                    fit: BoxFit.fitHeight,
                    color: Colors.white,
                  ),
                ),
              ),
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
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
            child: Text(
              "/",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 34,
              ),
            ),
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
        child: Text(
          "Ou",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ));
    //FIXME: Acomodar el HitText de cada field
    Widget cardNumberField = Container(
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text(
              "Numero de carte",
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
                /*         decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, right: 15),
                    hintText: "xxxx xxxx xxxx xxxx"),*/
              ),
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
            child: Text(
              "Date d'expiration",
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
    Widget cvvField = Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 30.0, bottom: 5.0),
      width: 500.0,
      height: 51.0,
      child: Row(
        children: [
          Container(
            width: 140.0,
            child: Text(
              "CVV",
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
                /* decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, right: 15),
                    hintText: "cvv"),*/
              ),
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
            child: Text(
              "Code Promo",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(bottom: 13.0),
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
              ),
              height: 30.0,
              child: TextField(
                controller: myController,
                textAlign: TextAlign.left,
                /*      decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, right: 15),
                    hintText: "xxxx/xx/xxx"),*/
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  color: Color(0xff4CAE7D),
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
              onTap: () {
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(right: 10.0),
                width: 30.0,
                height: 30.0,
                child: checkIcon(),
              )),
          Container(
            child: Text(
              "Enregistrer ma carte",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
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

bool checkbox = false;

class checkIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (checkbox == true) {
      checkbox = false;
      return Icon(
        Icons.check,
        color: Color(0xff4CAE7D),
        size: 28,
      );
    } else {
      checkbox = true;
      return Icon(
        Icons.check,
        color: Colors.white,
        size: 28,
      );
    }
  }
}
