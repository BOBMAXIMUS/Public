import 'package:flutter/material.dart';
import 'package:pagina_web/widgets/progress_bar.dart';

class StudentClickCorrectUploadValidation extends StatefulWidget {
  @override
  _StudentClickCorrectUploadValidationState createState() =>
      _StudentClickCorrectUploadValidationState();
}

class _StudentClickCorrectUploadValidationState
    extends State<StudentClickCorrectUploadValidation> {
  @override
  Widget build(BuildContext context) {
    Widget referenceText = Container(
      margin: EdgeInsets.only(top: 25.0),
      alignment: Alignment.center,
      child: Text(
        ''''
      Vos fichiers sont en cours de traitement.
      Identifiant de reference: CC0012

      Nous ferons de notre mieux pour vous repondre des que possible.
      Vous recevrez un mail ainsi qu'une notification une fois que nous avons
      trouve un professeur pour corriger vos fichiers
      ''',
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
    Widget viewCorrectionButtom = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 130.0),
        Container(
          // width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            shape: BoxShape.rectangle,
            color: Colors.pink.shade900,
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              child: Text(
                "Suivre ma correction",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(width: 100.0),
      ],
    );
    Widget thanksText = Container(
      margin: EdgeInsets.only(top: 25.0),
      alignment: Alignment.center,
      child: Text(
        ''''
      Merci de votre confiance en nous
      ''',
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
    Widget aroLogo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 150),
        Container(
          child: Text(
            "ARO",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
        ),
        SizedBox(width: 130),
      ],
    );
    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ProgressBar(),
          referenceText,
          viewCorrectionButtom,
          thanksText,
          aroLogo,
        ],
      ),
    );
  }
}
