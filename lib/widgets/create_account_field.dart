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
    Widget _goBackButtom = Container(
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
          _goBackButtom,
          _rowButtoms,
          //TODO: Cambiar el current content aqui
          MailPassField(myMailController, myPasswordController,
              myPasswordValidatorController),
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
        mainAxisSize: MainAxisSize.min,
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
            height: 30.0,
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
                  width: 200,
                  child: TextField(
                    controller: widget.mailController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "Adresse mail"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: double.infinity),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C)),
            ),
            height: 30.0,
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
                  width: 200,
                  child: TextField(
                    controller: widget.passwordController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: double.infinity),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C)),
            ),
            height: 30.0,
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
                  width: 200,
                  child: TextField(
                    controller: widget.verifiedPasswordController,
                    textAlign: TextAlign.start,
                    decoration:
                        InputDecoration(hintText: "Password verification"),
                  ),
                ),
              ],
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
            margin: EdgeInsets.only(bottom: 10.0, top: 20.0),
            constraints: BoxConstraints(maxWidth: double.infinity),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C)),
            ),
            height: 30.0,
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
                  width: 200,
                  child: TextField(
                    controller: firstNameController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "First name"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: double.infinity),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C)),
            ),
            height: 30.0,
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
                  width: 200,
                  child: TextField(
                    controller: lastNameController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "Last name"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: double.infinity),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Color(0xffB71C8C)),
            ),
            height: 30.0,
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
                  width: 200,
                  child: TextField(
                    controller: phoneNumberController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(hintText: "Phone number"),
                  ),
                ),
              ],
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
          myDialog(Student());
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
    Widget _goBackButtom = Container(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          myDialog(CreateAccountWidget());
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
          _titleText,
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
              height: 30.0,
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
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(hintText: "School grade"),
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
          color: Color(0xffB71C8C),
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
          _titleText,
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
              height: 30.0,
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
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          hintText: "Teaching level (in grades)"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 20.0),
              constraints: BoxConstraints(maxWidth: double.infinity),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                shape: BoxShape.rectangle,
                color: Colors.white,
                border: Border.all(color: Color(0xffB71C8C)),
              ),
              height: 30.0,
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
                    width: 200,
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
          color: Color(0xffB71C8C),
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
          _titleText,
          _goBackButtom,
          //TODO: Cambiar el current content aqui
          isTeacher(), //True para student , False para profesor
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
