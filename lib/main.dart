import 'package:flutter/material.dart';
import 'package:frontend/correction_stack.dart';
import 'package:frontend/custom_appbar_small.dart';
import 'package:frontend/custom_appbar_wide.dart';
import 'package:frontend/pages/all_view/services_view_login_page.dart';
import 'package:frontend/pages/student_view/student_book_class_now.dart';
import 'package:frontend/pages/student_view/student_book_class_search.dart';
import 'package:frontend/pages/student_view/student_book_class_paidment.dart';
import 'package:frontend/pages/student_view/student_click_correct_upload.dart';
import 'package:frontend/pages/student_view/student_click_correct_upload_validation.dart';
import 'package:frontend/pages/student_view/student_difficulty_page.dart';
import 'package:frontend/pages/student_view/student_main_view.dart';
import 'package:frontend/pages/student_view/student_maths_in_motion.dart';
import 'package:frontend/pages/student_view/student_personal_table.dart';
import 'package:frontend/pages/student_view/student_profile.dart';
import 'package:frontend/pages/student_view/student_search_teacher.dart';
import 'package:frontend/pages/teacher_view/main_teacher_view.dart';
import 'package:frontend/pages/teacher_view/teacher_confirm_class.dart';
import 'package:frontend/pages/teacher_view/teacher_correction_correct.dart';
import 'package:frontend/pages/teacher_view/teacher_correction_estimate.dart';
import 'package:frontend/pages/teacher_view/teacher_correction_upload.dart';
import 'package:frontend/sign_up/sign_up_form_two.dart';
import 'package:frontend/validator_sign_up_widget/validator_sign_up_scaffold.dart';
import 'package:frontend/pages/all_view/main_login_page.dart';

import 'login/login_scaffold.dart';
import 'pages/student_view/custom_student_appbar_wide.dart';
import 'pages/teacher_view/teacher_book_class.dart';
import 'sign_up/sign_up_scaffold.dart';

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
      //home: screenValidation(),
      routes: {
        '/': (context) => LoginScaffold(), //LoginScaffold(),
        '/signuptwo': (context) => SignUpFormNewTwo(),
        '/login/signUp': (context) => SignUpScaffold(),
        '/login/validator': (context) => ValidatorSignUpScaffold(),
        //LOGIN VIEWS
        "/loginMainPage": (context) => MainLoginPage(),
        "/servicesViewLoginPage": (context) => ServicesViewLoginPage(),
        //TEACHERS VIEWS
        "/teacherMainPages": (context) => CustomAppbar(TeacherMainPages()),
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
        "/studentMainPage": (context) => CustomStudentAppbar(StudentMainPage()),
        "/studentMathsInMotion": (context) =>
            CustomStudentAppbar(StudentMathsInMotionPage()),
        "/studentClickCorrectUpload": (context) =>
            CustomStudentAppbar(StudentClickCorrectUploadFile()),
        "/studentClickCorrectValidation": (context) =>
            CustomStudentAppbar(StudentClickCorrectUploadValidation()),
        "/studentDifficultyBar": (context) =>
            CustomStudentAppbar(StudentDifficultyPage()),
        "/studentBookAClass": (context) =>
            CustomStudentAppbar(StudentBookAClassSearch()),
        "/studentBookAClassPaidment": (context) =>
            CustomStudentAppbar(StudentBookClassPaidment()),
        "/studentBookAClassNow": (context) =>
            CustomStudentAppbar(StudentBookClassNow()),
        "/studentSearchTeacher": (context) =>
            CustomStudentAppbar(StudentSearchTeacher()),
        "/studentPersonalTable": (context) =>
            CustomStudentAppbar(StudentPersonalTable()),
        "/studentProfileView": (context) =>
            CustomStudentAppbar(StudentProfileView()),
      },
      initialRoute: '/loginMainPage',
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
            // return CustomStudentAppbar(StudentMainPage());
            return ServicesViewLoginPage();
          }
        },
      ),
    );
  }
}
