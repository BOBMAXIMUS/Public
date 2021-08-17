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

class SignUpFormNewTwo extends StatelessWidget {
  const SignUpFormNewTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) =>
            Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _PasswordInputField(),
                //_LoginButton(),
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
            'Connection',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          )
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
              margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
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
              "Continue",
              style: TextStyle(color: Colors.white),
            ),
            disabledColor: Color(0xffB71C8C).withOpacity(0.6),
            color: Color(0xffB71C8C),
              onPressed: () => context.read<SignUpBloc>().add(FormSubmitted())
          ),
        );
      },
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

class _PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
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
                      obscureText: true,
                      textAlign: TextAlign.start,
                      onChanged: (password) => context
                          .read<SignUpBloc>()
                          .add(PasswordChanged(password: password)),
                      decoration: InputDecoration(hintText: "Password"),
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
