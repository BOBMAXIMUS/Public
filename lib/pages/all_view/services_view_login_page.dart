import 'package:flutter/material.dart';
import 'package:frontend/widgets/create_account_field.dart';

class ServicesViewLoginPage extends StatefulWidget {
  @override
  _ServicesViewLoginPageState createState() => _ServicesViewLoginPageState();
}

class _ServicesViewLoginPageState extends State<ServicesViewLoginPage> {
  final TextStyle myStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 12.0,
  );

  Color currentColor = Color(0xff4CAE7D);

  TextSpan boldTextSpan(String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  TextSpan normalTextSpan(String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget currentContent = OtherTwo(
      "lib/assets/images/myClassNowIcon.jpg",
      TextSpan(
        children: [
          TextSpan(
            text: "Vouspermet de trouver ou de donner des ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: "cours particuliers\n",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "en legne rapidement et facilement.",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      "/studentBookAClassNow");

  Widget customButtom(
      BuildContext context,
      String navigatorRoute,
      Color textColor,
      String insideText,
      Color backgroundColor,
      Color borderColor) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: backgroundColor,
          border: Border.all(color: borderColor)),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () => Navigator.pushReplacementNamed(context, navigatorRoute),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            insideText,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }

  Widget createAccountButtom(Color textColor, String insideText,
      Color backgroundColor, Color borderColor, Widget content) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: backgroundColor,
          border: Border.all(color: borderColor)),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: content,
              );
            },
            barrierDismissible: true,
          );
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            insideText,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget bookClass = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xff4CAE7D);
            currentContent = OtherTwo(
                "lib/assets/images/myClassNowIcon.jpg",
                TextSpan(
                  children: [
                    normalTextSpan("Vouspermet de trouver ou de donner des "),
                    boldTextSpan("cours particuliers\n"),
                    normalTextSpan("en legne rapidement et facilement."),
                  ],
                ),
                "/studentBookAClassNow");
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/myClassNowIcon.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Book a class now",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget planLater = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xff2C4997);
            currentContent = OtherTwo(
                "lib/assets/images/PlanAClassForLater.jpg",
                TextSpan(
                  children: [
                    normalTextSpan("Vous permet de "),
                    boldTextSpan("reserver "),
                    normalTextSpan("ou "),
                    boldTextSpan("planifier "),
                    normalTextSpan(
                        "des cours\n particuliers en avance grace a un calendrier.")
                  ],
                ),
                "/studentBookAClass");
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/PlanAClassForLater.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Book a class for later",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget clicknCorrect = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        //    color: Colors.teal,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xffB71C8C);
            currentContent = OtherTwo(
                "lib/assets/images/request_correction.jpg",
                TextSpan(
                  children: [
                    boldTextSpan("Revisez "),
                    normalTextSpan(
                        "vos chapitres de maths\n avec des videos explicatives.")
                  ],
                ),
                "/studentClickCorrectUpload");
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/clickCorrectIcon.jpg"),
                  fit: BoxFit.contain,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: Text(
                  "Click&Correct",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget mathsInMotion = Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            currentColor = Color(0xff12133C);
            currentContent = OtherTwo(
                "lib/assets/images/MathsInMotion.jpg",
                TextSpan(
                  children: [
                    normalTextSpan("Faites "),
                    boldTextSpan("corriger "),
                    normalTextSpan(
                        "ou corrigez des copies de toutes\n matieres sans etapes intermediaires"),
                  ],
                ),
                "/studentMathsInMotion");
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Image(
                  image: AssetImage("lib/assets/images/MathsInMotion.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 5.0,
                ),
                child: Text(
                  "Maths in\nMotion",
                  style: myStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget rowForMain = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 2, child: bookClass),
        Expanded(flex: 2, child: planLater),
        Expanded(flex: 2, child: mathsInMotion),
        Expanded(flex: 2, child: clicknCorrect),
      ],
    );
    Widget underLine = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
              height: 0.7,
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
    Widget allAppbar = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: rowForMain),
          underLine,
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: currentContent,
            ),
          )
        ],
      ),
    );
    Widget infoContainer = Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: currentColor,
      ),
      child: Center(child: allAppbar),
    );
    Widget orderContainer = Container(
      margin: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(flex: 1, child: FittedBox()),
          Flexible(flex: 4, child: infoContainer),
          Flexible(flex: 1, child: FittedBox()),
        ],
      ),
    );
    Widget opacityContainer = Opacity(
      opacity: 0.8,
      child: Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
    Widget welcomeRow = Container(
      margin: EdgeInsets.only(top: 70.0, left: 40.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 4,
            child: Container(
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/welcomeBackground.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(left: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 65.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "ARO",
                      style: TextStyle(
                        color: Color(0xff12133C),
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 30.0),
                  child: Text(
                    '''Faites partie de la
revolution pedagogique.
                  ''',
                    style: TextStyle(
                      color: Color(0xff12133C),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                createAccountButtom(Color(0xffB71C8C), "Login", Colors.white24,
                    Color(0xffB71C8C), loginAccountFiled()),
                createAccountButtom(Colors.white, "Sign-up", Color(0xffB71C8C),
                    Color(0xffB71C8C), CreateAccountWidget()),
              ],
            ),
          ),
        ],
      ),
    );

    Widget backgroundImage = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/purple_paper.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            opacityContainer,
            ListView(
              children: [
                Column(
                  children: [
                    welcomeRow,
                    Container(
                      margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                      child: Text(
                        "Nos services",
                        style: TextStyle(
                          color: Color(0xff12133C),
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    orderContainer,
                    customButtom(context, "null", Colors.white, "Voir les avis",
                        Color(0xffB71C8C), Color(0xffB71C8C)),
                  ],
                ),
              ],
            )
          ],
        ),
        minimum: EdgeInsets.all(25.0),
      ),
    );

    return Scaffold(
      body: backgroundImage,
    );
  }
}

class OtherTwo extends StatefulWidget {
  String assetImage;
  TextSpan text;
  String route;

  OtherTwo(this.assetImage, this.text, this.route);

  @override
  _OtherTwoState createState() => _OtherTwoState();
}

class _OtherTwoState extends State<OtherTwo> {
  //FIXME: unir el appbar con esta lista y usar el index para moverse entre las diferentes pantallas

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          child: InkWell(
            onTap: () => Navigator.pushReplacementNamed(context, widget.route),
            child: Image(
              image: AssetImage(widget.assetImage),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: RichText(
            text: widget.text,
          ),
        ),
      ],
    );
  }
}

//TODO: hacer el login
Widget loginAccountFiled() {
  final _myMailController = TextEditingController();
  final _myPasswordController = TextEditingController();

  Widget _titleText = Container(
    child: Text(''''
         ARO
    Login
  '''),
  );
  Widget _rowButtoms = Container(
    margin: EdgeInsets.only(top: 10.0),
    child: Row(
      children: [
        Container(
          width: 200.0,
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C))),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: InkWell(
            //TODO: func here
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Use Facebook",
                style: TextStyle(color: Color(0xffB71C8C)),
              ),
            ),
          ),
        ),
        Container(
          width: 200.0,
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C))),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: InkWell(
            //TODO: func here
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Use Google",
                style: TextStyle(color: Color(0xffB71C8C)),
              ),
            ),
          ),
        ),
      ],
    ),
  );
  Widget _allTextField = Container(
    child: Column(
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: double.infinity),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
          height: 30.0,
          child: TextField(
            controller: _myMailController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(hintText: "Adresse mail"),
          ),
        ),
        Container(
          constraints: BoxConstraints(maxWidth: double.infinity),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            shape: BoxShape.rectangle,
            color: Colors.white,
          ),
          height: 30.0,
          child: TextField(
            controller: _myPasswordController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(hintText: "Password"),
          ),
        ),
      ],
    ),
  );
  Widget _loginButtom = Container(
    width: 200.0,
    margin: EdgeInsets.symmetric(vertical: 10.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        shape: BoxShape.rectangle,
        color: Colors.white,
        border: Border.all(color: Color(0xffB71C8C))),
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: InkWell(
      //TODO: func here
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "Login",
          style: TextStyle(color: Color(0xffB71C8C)),
        ),
      ),
    ),
  );
  Widget _forgottenPasswordText = Container(
    child: InkWell(
      //TODO: func here
      onTap: () {},
      child: Container(
        child: Text(
          "Fogotten password?",
          style: TextStyle(color: Colors.white38),
        ),
      ),
    ),
  );

  return Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _titleText,
        _rowButtoms,
        _allTextField,
        _loginButtom,
        _forgottenPasswordText,
      ],
    ),
  );
}
