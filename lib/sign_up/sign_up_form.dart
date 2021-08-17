import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/common/auth_text_field.dart';
import 'package:frontend/application/sign_up/sign_up_bloc.dart';
import 'package:frontend/application/sign_up/sign_up_event.dart';
import 'package:frontend/application/sign_up/sign_up_state.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/auth_models/confirm_password.dart';
import 'package:frontend/application/auth_models/password.dart';
import 'package:frontend/sign_up/sign_up_scaffold.dart';
import 'package:frontend/widgets/create_account_field.dart';

final double fieldWidth = 300;
final double fieldheight = 45;

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);
  myDialog(Widget content, BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: content,
        );
      },
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Color(0xffB71C8C),
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap:() => context.read<SignUpBloc>().add(FormSubmitted()), /*() {
          Navigator.pop(context);
          myDialog(NameNumberField(), context);
        },*/
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Continue",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    return BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state){
          if (state.status.isSubmissionFailure) {
            print('submission failure');
          } else if (state.status.isSubmissionSuccess) {
            print('success');
            //TODO
            // page number view
            if(state.userId == '1'){
              Navigator.pop(context);
              print(state.email);
              myDialog(NameNumberField(), context);
            }
            else{
              Navigator.of(context).pushNamed('/login/validator',
                  arguments: {'userId': state.userId});
            }
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _WelcomeText(),
                _RowButtons(),
                _EmailInputField(),
                _continueButtom,
              ],
            ),
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

class _RowButtons extends StatelessWidget {
  const _RowButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Container(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _GoBackButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Container(
                    width: 175.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xffB71C8C))),
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: InkWell(
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
                ),
                Flexible(
                  child: Container(
                    width: 175.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xffB71C8C))),
                    padding:
                    EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    child: InkWell(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
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

class NameNumberField extends StatefulWidget {
  @override
  _NameNumberFieldState createState() => _NameNumberFieldState();
}

class _NameNumberFieldState extends State<NameNumberField> {
  myDialog(Widget content) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: content,
        );
      },
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _nameNumberField = Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
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
                    image: AssetImage("lib/assets/images/Profile.jpg"),
                    fit: BoxFit.cover,
                    color: Color(0xffB71C8C),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 3.0),
                  width: fieldWidth,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "First name"),
                    onChanged: (name) =>
                        context.read<SignUpBloc>().add(NameChanged(name: name)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
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
                    image: AssetImage("lib/assets/images/Profile.jpg"),
                    fit: BoxFit.cover,
                    color: Color(0xffB71C8C),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 3.0),
                  width: fieldWidth,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "Last name"),
                    onChanged: (lastName) => context
                        .read<SignUpBloc>()
                        .add(LastNameChanged(lastName: lastName)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
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
                  child: Icon(
                    Icons.phone,
                    color: Color(0xffB71C8C),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 3.0),
                  width: fieldWidth,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "Phone number"),
                    onChanged: (phone) => context
                        .read<SignUpBloc>()
                        .add(PhoneChanged(phone: phone)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Color(0xffB71C8C),
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          myDialog(Student());
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Continue",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    Widget _goBackButtom = Container(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          myDialog(SignUpScaffold());
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

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _WelcomeText(),
          _goBackButtom,
          _nameNumberField,
          _continueButtom,
        ],
      ),
    );
  }
}

class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  myDialog(Widget content) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: content,
        );
      },
      barrierDismissible: true,
    );
  }

  isStudent() {
    //True para student , False para profesor
    _studentSelect() {
      Widget _studentField = Container(
        child: Column(
          children: [
            Container(
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
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(hintText: "School grade"),
                      onChanged: (degree) => context
                          .read<SignUpBloc>()
                          .add(DegreeChanged(degree: degree)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

      Widget _selectedStudent = Container(
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
                  Navigator.pop(context);
                  myDialog(Student());
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
                  Navigator.pop(context);
                  myDialog(Teacher());
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
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _selectedStudent,
            _studentField,
          ],
        ),
      );
    }

    return _studentSelect();
  }

  @override
  Widget build(BuildContext context) {
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Color(0xffB71C8C),
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () => context.read<SignUpBloc>().add(FormSubmitted()),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Finish Account",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    Widget _goBackButtom = Container(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          myDialog(NameNumberField());
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

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _WelcomeText(),
          _goBackButtom,
          //TODO: Cambiar el current content aqui
          isStudent(), //True para student , False para profesor
          _continueButtom,
        ],
      ),
    );
  }
}

class Teacher extends StatefulWidget {
  @override
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  myDialog(Widget content) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: content,
        );
      },
      barrierDismissible: true,
    );
  }

  isTeacher() {
    //True para student , False para profesor
    _teacherSelect() {
      Widget _educationInfoField = Container(
        child: Column(
          children: [
            Container(
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
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          hintText: "Teaching level (in grades)"),
                      onChanged: (degree) => context
                          .read<SignUpBloc>()
                          .add(DegreeChanged(degree: degree)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 10.0),
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
                      image: AssetImage("lib/assets/images/MathsInMotion.jpg"),
                      fit: BoxFit.cover,
                      color: Color(0xffB71C8C),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    width: fieldWidth,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration:
                      InputDecoration(hintText: "Main Taught subject"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
      Widget _disclaimerText = Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Text(
          "You'll be able to add more subjects to teach to your account once it is validated by our admin team.",
          style: TextStyle(
            fontSize: 8,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      Widget _taecherInput = Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Row(
          children: [
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
                  Navigator.pop(context);
                  myDialog(Student());
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
                        style: TextStyle(color: Color(0xffB71C8C)),
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
                  color: Color(0xffB71C8C),
                  border: Border.all(color: Color(0xffB71C8C))),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  myDialog(Teacher());
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
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _taecherInput,
            _educationInfoField,
            _disclaimerText,
          ],
        ),
      );
    }

    return _teacherSelect();
  }

  @override
  Widget build(BuildContext context) {
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Color(0xffB71C8C),
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        onTap: () => context.read<SignUpBloc>().add(FormSubmitted()),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Finish Account",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    Widget _goBackButtom = Container(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          myDialog(NameNumberField());
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

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _WelcomeText(),
          _goBackButtom,
          //TODO: Cambiar el current content aqui
          isTeacher(), //True para student , False para profesor
          _continueButtom,
        ],
      ),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
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
                      image: AssetImage("lib/assets/images/mailIcon.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    width: fieldWidth,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(hintText: "Adresse mail"),
                      onChanged: (email) => context
                          .read<SignUpBloc>()
                          .add(EmailChanged(email: email)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
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
                      image: AssetImage("lib/assets/images/passwordIcon.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    width: fieldWidth,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(hintText: "Password"),
                      keyboardType: TextInputType.text,
                      onChanged: (password) => context
                          .read<SignUpBloc>()
                          .add(PasswordChanged(password: password)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
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
                      image: AssetImage(
                          "lib/assets/images/verifiedPasswordIcon.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    width: fieldWidth,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration:
                      InputDecoration(hintText: "Password verification"),
                      keyboardType: TextInputType.text,
                      onChanged: (confirmPassword) => context
                          .read<SignUpBloc>()
                          .add(ConfirmPasswordChanged(
                          confirmPassword: confirmPassword)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _NameInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Name',
            key: const Key('signUpForm_nameInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (name) =>
                context.read<SignUpBloc>().add(NameChanged(name: name)),
          ),
        );
      },
    );
  }
}

class _LastNameInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.lastName != current.lastName,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Last Name',
            key: const Key('signUpForm_lastNameInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (lastName) => context
                .read<SignUpBloc>()
                .add(LastNameChanged(lastName: lastName)),
          ),
        );
      },
    );
  }
}

class _TypeUserInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.typeUser != current.typeUser,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Type User',
            key: const Key('signUpForm_typeUserInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (typeUser) => context
                .read<SignUpBloc>()
                .add(TypeUserChanged(typeUser: typeUser)),
          ),
        );
      },
    );
  }
}

class _CountryInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.country != current.country,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Country',
            key: const Key('signUpForm_countryInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (country) => context
                .read<SignUpBloc>()
                .add(CountryChanged(country: country)),
          ),
        );
      },
    );
  }
}

class _PhoneInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.phone != current.phone,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Phone',
            key: const Key('signUpForm_phoneInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (phone) =>
                context.read<SignUpBloc>().add(PhoneChanged(phone: phone)),
          ),
        );
      },
    );
  }
}

class _DegreeInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.degree != current.degree,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Degree',
            key: const Key('signUpForm_degreeInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (degree) =>
                context.read<SignUpBloc>().add(DegreeChanged(degree: degree)),
          ),
        );
      },
    );
  }
}

class _LanguageInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.language != current.language,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Language',
            key: const Key('signUpForm_languageInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.text,
            onChanged: (language) => context
                .read<SignUpBloc>()
                .add(LanguageChanged(language: language)),
          ),
        );
      },
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Password',
            key: const Key('signUpForm_passwordInput_textField'),
            isPasswordField: true,
            isRequiredField: true,
            keyboardType: TextInputType.text,
            error: state.password.error.name,
            onChanged: (password) => context
                .read<SignUpBloc>()
                .add(PasswordChanged(password: password)),
          ),
        );
      },
    );
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
      previous.password != current.password ||
          previous.confirmPassword != current.confirmPassword,
      builder: (context, state) {
        return AuthTextField(
          hint: 'Confirm Password',
          isRequiredField: true,
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          isPasswordField: true,
          keyboardType: TextInputType.text,
          error: state.confirmPassword.error.name,
          onChanged: (confirmPassword) => context
              .read<SignUpBloc>()
              .add(ConfirmPasswordChanged(confirmPassword: confirmPassword)),
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: 20),
          child: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Text('Sign Up'),
              disabledColor: Colors.blueAccent.withOpacity(0.6),
              color: Colors.blueAccent,
              onPressed: () => context.read<SignUpBloc>().add(FormSubmitted())),
        );
      },
    );
  }
}
