import 'package:flutter/material.dart';
import 'package:pagina_web/correction_stack.dart';
import 'package:pagina_web/custom_appbar_small.dart';
import 'package:pagina_web/custom_appbar_wide.dart';
import 'package:pagina_web/pages/student_view/student_book_class_now.dart';
import 'package:pagina_web/pages/student_view/student_book_class_search.dart';
import 'package:pagina_web/pages/student_view/student_book_class_paidment.dart';
import 'package:pagina_web/pages/student_view/student_click_correct_upload.dart';
import 'package:pagina_web/pages/student_view/student_click_correct_upload_validation.dart';
import 'package:pagina_web/pages/student_view/student_difficulty_page.dart';
import 'package:pagina_web/pages/student_view/student_main_view.dart';
import 'package:pagina_web/pages/student_view/student_maths_in_motion.dart';
import 'package:pagina_web/pages/student_view/student_search_teacher.dart';
import 'package:pagina_web/pages/teacher_view/teacher_confirm_class.dart';
import 'package:pagina_web/pages/teacher_view/teacher_correction_correct.dart';
import 'package:pagina_web/pages/teacher_view/teacher_correction_estimate.dart';
import 'package:pagina_web/pages/teacher_view/teacher_correction_upload.dart';

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
        //TEACHERS VIEWS
        "/teacherMainPages": (context) => CustomAppbar(TeacherMainPage()),
        "/teacherBookClass": (context) => CustomAppbar(TeacherBookClass()),
        "/teacherCorrectionStack": (context) => CustomAppbar(CorrectionStack()),
        "/teacherBookClassConfirm": (context) =>
            CustomAppbar(TeacherConfirmClass()),
        "/teacherCorrectionEstimate": (context) =>
            CustomAppbar(CorrectionEstimate()),
        "/teacherCorrectionCorrect": (context) =>
            CustomAppbar(TeacherCorrectionCorrect()),
        "/teacherCorrectionUpload": (context) =>
            CustomAppbar(TeacherCorrectionUpload()),
        //STUDENT VIEW
        "/studentMainPage": (context) => CustomAppbar(StudentMainPage()),
        "/studentMathsInMotion": (context) =>
            CustomAppbar(StudentMathsInMotionPage()),
        "/studentClickCorrectUpload": (context) =>
            CustomAppbar(StudentClickCorrectUploadFile()),
        "/studentClickCorrectValidation": (context) =>
            CustomAppbar(StudentClickCorrectUploadValidation()),
        "/studentDifficultyBar": (context) =>
            CustomAppbar(StudentDifficultyPage()),
        "/studentBookAClass": (context) =>
            CustomAppbar(StudentBookAClassSearch()),
        "/studentBookAClassPaidment": (context) =>
            CustomAppbar(StudentBookClassPaidment()),
        "/studentBookAClassNow": (context) =>
            CustomAppbar(StudentBookClassNow()),
        "/studentSearchTeacher": (context) =>
            CustomAppbar(StudentSearchTeacher()),
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
            return CustomAppbar(StudentMainPage());
          }
        },
      ),
    );
  }
}
