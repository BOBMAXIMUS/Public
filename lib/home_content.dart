import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pagina_web/progress_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget text1 = Text("Understand maths.  Boost your results.");
    Widget text2 = Text(
      "Open doors",
    );

    Widget uploadFile = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
        color: Colors.indigo.shade900,
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text("Upload a file"),
          Icon(Icons.upload_file),
        ],
      ),
    );

    Widget text3 = Text("Please make sure that your file follows these rules:");

    Column order = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        text1,
        text2,
        uploadFile,
        text3,
      ],
    );

    Container example1 = Container(
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don'ts"),
          Text("Text is unclear, blurry or crooked"),
          Text("Formulas and questions cannot be read"),
          Text("Some elements are cut off and not visible"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
    Container example2 = Container(
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Do's"),
          Text("Text is alignesm straight, clear and readable with margins"),
          Text("Formulas and questions can be read"),
          Text("The whole exercise is available with all necesary data"),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
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

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ProgressBar(),
        order,
        adjuntExamples,
      ],
    );
  }
}
