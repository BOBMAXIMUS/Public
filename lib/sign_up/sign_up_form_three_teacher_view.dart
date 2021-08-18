import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/application/sign_up/sign_up_bloc.dart';
import 'package:frontend/application/sign_up/sign_up_event.dart';
import 'package:frontend/application/sign_up/sign_up_state.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/sign_up/sign_up_form_three_student_view.dart';
import 'package:frontend/widgets/dropdown_widget.dart';

final double fieldWidth = 300;
final double fieldheight = 48;
final double buttonsWidth = 200;

class SignUpFormNewTeacherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _WelcomeText(),
                    _GoBackButton(),
                    _GoToButtons(),
                    _TeacherGradeInputField(),
                    _TeacherTaughtInputField(),
                    _DisclaimerText(),
                    _LoginButton(),
                  ],
                ),
                state.status.isSubmissionInProgress
                    ? Positioned(
                        child: Align(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(),
              ],
            ));
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'ARO',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 64, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'Create an account',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class _GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 53.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Container(
              child: Text(
                "<",
                style: TextStyle(
                  color: Color(0xffB71C8C),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              child: Text(
                "Go back",
                style: TextStyle(
                  color: Color(0xffB71C8C),
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TeacherGradeInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.degree != current.degree,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(bottom: 10.0, top: 20.0),
          constraints: BoxConstraints(maxWidth: double.infinity),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            shape: BoxShape.rectangle,
            color: Colors.white,
            border: Border.all(color: Color(0xffB71C8C)),
          ),
          height: fieldheight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30.0,
                width: 30.0,
                margin: EdgeInsets.fromLTRB(7, 5, 5, 5),
                child: Image(
                  image: AssetImage("lib/assets/images/studentGrade.jpg"),
                  fit: BoxFit.cover,
                  color: Color(0xffB71C8C),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 3.0),
                width: fieldWidth,
                child: DropDownMenu(
                  "Teaching level (in grades)",
                  (degree) => context
                      .read<SignUpBloc>()
                      .add(DegreeChanged(degree: degree)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TeacherTaughtInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.degree != current.degree,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(bottom: 10.0, top: 20.0),
          constraints: BoxConstraints(maxWidth: double.infinity),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            shape: BoxShape.rectangle,
            color: Colors.white,
            border: Border.all(color: Color(0xffB71C8C)),
          ),
          height: fieldheight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30.0,
                width: 30.0,
                margin: EdgeInsets.fromLTRB(7, 5, 5, 5),
                child: Image(
                  image: AssetImage("lib/assets/images/studentGrade.jpg"),
                  fit: BoxFit.cover,
                  color: Color(0xffB71C8C),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 3.0),
                width: fieldWidth,
                child: DropDownMenu(
                  "Main Taught subject",
                  (degree) => context
                      .read<SignUpBloc>()
                      .add(DegreeChanged(degree: degree)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _GoToButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    myDialog(Widget content) {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: content,
          );
        },
        barrierDismissible: false,
      );
    }

    BuildContext dialogContext;

    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Container(
            width: 200.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Color(0xffB71C8C),
                border: Border.all(color: Color(0xffB71C8C))),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(dialogContext);
                myDialog(SignUpFormNewStudentView());
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    margin: EdgeInsets.only(right: 5.0),
                    child: Image(
                      image: AssetImage("lib/assets/images/studentHat.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Student",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                shape: BoxShape.rectangle,
                color: Colors.white,
                border: Border.all(color: Color(0xffB71C8C))),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(dialogContext);
                myDialog(SignUpFormNewTeacherView());
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    margin: EdgeInsets.only(right: 5.0),
                    child: Image(
                      image: AssetImage("lib/assets/images/teacherRobe.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Teacher",
                      style: TextStyle(color: Color(0xffB71C8C)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DisclaimerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Text(
        "You'll be able to add more subjects to teach to your account once it is validated by our admin team.",
        style: TextStyle(
          fontSize: 10,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: 20, bottom: 20.0),
          child: CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 2.5),
              child: Text(
                "Finish account",
                style: TextStyle(color: Colors.white),
              ),
              disabledColor: Color(0xffB71C8C).withOpacity(0.6),
              color: Color(0xffB71C8C),
              onPressed: () => context.read<SignUpBloc>().add(FormSubmitted())),
        );
      },
    );
  }
}
