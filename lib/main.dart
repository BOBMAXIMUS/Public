import 'package:flutter/material.dart';
import 'package:pagina_web/correction_stack.dart';
import 'package:pagina_web/custom_appbar_small.dart';
import 'package:pagina_web/custom_appbar_wide.dart';
import 'package:pagina_web/pages/teacher_view/main_teacher_view.dart';

import 'pages/teacher_view/teacher_book_class.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
      home: screenValidation(),
      routes: {
        "/teacherBookClass": (context) => TeacherBookClass(),
        "/teacherCorrectionStack": (context) => CorrectionStack(),
      },
    );
  }

  //FIXME: Acomodar los constraints? hacer una mejor validacion?
  Scaffold screenValidation() {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight < 500) {
            return AppBarMobileMode();
          } else {
            return CustomAppbar(0);
          }
        },
      ),
    );
  }
}
