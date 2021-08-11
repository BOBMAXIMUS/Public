import 'package:flutter/material.dart';

class CreateAccountWidget extends StatefulWidget {
  @override
  _CreateAccountWidgetState createState() => _CreateAccountWidgetState();
}

class _CreateAccountWidgetState extends State<CreateAccountWidget> {
  final myMailController = TextEditingController();
  final myPasswordController = TextEditingController();
  final myPasswordValidatorController = TextEditingController();
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
    Widget _titleText = Container(
      child: Text(''''
         ARO
    Create account
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

    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        //TODO:some func here
        onTap: () {
          Navigator.pop(context);
          myDialog(NameNumberField());
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Continue",
            style: TextStyle(color: Color(0xffB71C8C)),
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
          //TODO: Cambiar el current content aqui
          MailPassField(
              myMailController, myPasswordController, myPasswordController),
          _continueButtom,
        ],
      ),
    );
  }
}

class MailPassField extends StatefulWidget {
  TextEditingController mailController;
  TextEditingController passwordController;
  TextEditingController verifiedPasswordController;
  MailPassField(this.mailController, this.passwordController,
      this.verifiedPasswordController);
  @override
  _MailPassFieldState createState() => _MailPassFieldState();
}

class _MailPassFieldState extends State<MailPassField> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              controller: widget.mailController,
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
              controller: widget.passwordController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(hintText: "Password"),
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
              controller: widget.verifiedPasswordController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(hintText: "Password verification"),
            ),
          ),
        ],
      ),
    );
  }
}

class NameNumberField extends StatefulWidget {
  @override
  _NameNumberFieldState createState() => _NameNumberFieldState();
}

class _NameNumberFieldState extends State<NameNumberField> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
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
              controller: firstNameController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(hintText: "First name"),
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
              controller: lastNameController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(hintText: "Last name"),
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
              controller: phoneNumberController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(hintText: "Phone number"),
            ),
          ),
        ],
      ),
    );
    Widget _titleText = Container(
      child: Text(''''
         ARO
    Create account
  '''),
    );
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        //TODO:some func here
        onTap: () {
          Navigator.pop(context);
          myDialog(StudentOrTeacher(true));
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Continue",
            style: TextStyle(color: Color(0xffB71C8C)),
          ),
        ),
      ),
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _titleText,
          //TODO: Cambiar el current content aqui
          _nameNumberField,
          _continueButtom,
        ],
      ),
    );
  }
}

class StudentOrTeacher extends StatefulWidget {
  bool studentOrProfesor; //True para student , False para profesor
  StudentOrTeacher(this.studentOrProfesor);
  @override
  _StudentOrTeacherState createState() => _StudentOrTeacherState();
}

class _StudentOrTeacherState extends State<StudentOrTeacher> {
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

  isStudentOrTeacher(bool identifier) {
    //True para student , False para profesor
    _teacherSelect() {
      Widget _educationInfoField = Container(
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
                textAlign: TextAlign.start,
                decoration:
                    InputDecoration(hintText: "Teaching level (in grades)"),
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
                textAlign: TextAlign.start,
                decoration: InputDecoration(hintText: "Main taught subject"),
              ),
            ),
          ],
        ),
      );

      Widget _taecherInput = Container(
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
                onTap: () {
                  Navigator.pop(context);
                  myDialog(StudentOrTeacher(true));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Student",
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
                  color: Color(0xffB71C8C),
                  border: Border.all(color: Color(0xffB71C8C))),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  myDialog(StudentOrTeacher(false));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Teacher",
                    style: TextStyle(color: Colors.white),
                  ),
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
          ],
        ),
      );
    }

    _studentSelect() {
      Widget _studentField = Container(
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
                textAlign: TextAlign.start,
                decoration: InputDecoration(hintText: "School grade"),
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
                  myDialog(StudentOrTeacher(true));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Student",
                    style: TextStyle(color: Colors.white),
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
                onTap: () {
                  Navigator.pop(context);
                  myDialog(StudentOrTeacher(false));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Teacher",
                    style: TextStyle(color: Color(0xffB71C8C)),
                  ),
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

    validator() {
      if (identifier == true) {
        _studentSelect();
      } else {
        _teacherSelect();
      }
    }

    return _studentSelect();
  }

  @override
  Widget build(BuildContext context) {
    Widget _titleText = Container(
      child: Text(''''
         ARO
    Create account
  '''),
    );
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        //TODO:some func here
        onTap: () {
          Navigator.pop(context);
          myDialog(ValidateEmail());
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Continue",
            style: TextStyle(color: Color(0xffB71C8C)),
          ),
        ),
      ),
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _titleText,
          //TODO: Cambiar el current content aqui
          isStudentOrTeacher(true), //True para student , False para profesor
          _continueButtom,
        ],
      ),
    );
  }
}

class ValidateEmail extends StatefulWidget {
  @override
  _ValidateEmailState createState() => _ValidateEmailState();
}

class _ValidateEmailState extends State<ValidateEmail> {
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
    Widget _titleText = Container(
      child: Text(''''
         ARO
    Create account
  '''),
    );
    Widget _continueButtom = Container(
      width: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(color: Color(0xffB71C8C))),
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: InkWell(
        //TODO:some func here
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Finish!",
            style: TextStyle(color: Color(0xffB71C8C)),
          ),
        ),
      ),
    );
    Widget _contentText = Container(
      child: Text(''''Your account gas sucessfully been
      created.
      Before procceeding, please verify your
      email adress by clicking the link sent to
      emailadress@provider.place'''),
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _titleText,
          _contentText,
          //TODO: Cambiar el current content aqui
          _continueButtom,
        ],
      ),
    );
  }
}
