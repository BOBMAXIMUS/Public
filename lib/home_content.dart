import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pagina_web/progress_bar.dart';

class HomePage extends StatelessWidget {
  final TextStyle myStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    Widget text1 = Container(
      margin: EdgeInsets.symmetric(vertical: 11.0),
      child: Text(
        "Understand maths.  Boost your results.",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
      ),
    );
    Widget text2 = Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Text(
        "Open doors",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 22.0,
        ),
      ),
    );

    Widget uploadFile = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        shape: BoxShape.rectangle,
        color: Colors.indigo.shade900,
      ),
      padding: EdgeInsets.symmetric(horizontal: 85.0, vertical: 23.0),
      child: Column(
        children: [
          Text(
            "Upload a file",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 12.0,
                color: Colors.white),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(top: 5.0),
            child: Image(
              image: AssetImage("lib/assets/images/uploadPage.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );

    Widget text3 = Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        "Please make sure that your file follows these rules:",
        style: myStyle,
      ),
    );

    Column order = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        text1,
        text2,
        uploadFile,
        text3,
      ],
    );

    Container example1 = Container(
      width: 400.0,
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Don'ts",
              textAlign: TextAlign.center,
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30.0,
              left: 15.0,
              bottom: 5.0,
            ),
            child: Text(
              "Text is unclear, blurry or crooked",
              textAlign: TextAlign.start,
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.0,
              left: 15.0,
              bottom: 5.0,
            ),
            child: Text(
              "Formulas and questions cannot be read",
              textAlign: TextAlign.start,
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.0,
              left: 15.0,
              bottom: 20.0,
            ),
            child: Text(
              "Some elements are cut off and not visible",
              textAlign: TextAlign.start,
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 10.0,
            ),
            alignment: Alignment.topCenter,
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                shape: BoxShape.rectangle,
                // color: Colors.tealAccent.shade700,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/negative_do.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    Container example2 = Container(
      width: 400.0,
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Do's",
              textAlign: TextAlign.center,
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30.0,
              left: 15.0,
              bottom: 5.0,
            ),
            child: Text(
              "Text is alignesm straight, clear and readable with margins",
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.0,
              left: 15.0,
              bottom: 5.0,
            ),
            child: Text(
              "Formulas and questions can be read",
              style: myStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.0,
              left: 15.0,
              bottom: 20.0,
            ),
            child: Text(
              "The whole exercise is available with all necesary data",
              style: myStyle,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              width: 300.0,
              height: 200.0,
              margin: EdgeInsets.only(
                bottom: 10.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                shape: BoxShape.rectangle,
                // color: Colors.tealAccent.shade700,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/afirmative_do.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Wrap adjuntExamples = Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 20.0, //separacion segun el "direction" ,horizontal
      runSpacing: 20.0, // separacion al momento de rodar
      children: [example1, example2],
    );

    return Padding(
      padding: EdgeInsets.only(top: 89.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ProgressBar(),
          order,
          adjuntExamples,
        ],
      ),
    );
  }
}
