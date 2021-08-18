import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/application/sign_up/sign_up_bloc.dart';
import 'package:frontend/application/sign_up/sign_up_event.dart';
import 'package:frontend/application/sign_up/sign_up_state.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/sign_up/sign_up_form_two.dart';

final double fieldWidth = 300;
final double fieldheight = 48;
final double buttonsWidth = 200;

class SignUpFormNew extends StatelessWidget {
  const SignUpFormNew({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(listener: (context, state) {
      if (state.status.isSubmissionFailure) {
        print('submission failure');
      } else if (state.status.isSubmissionSuccess) {
        print('success');
      }
    }, builder: (context, state) {
      if (state.viewnumber == 2) {
        return SignUpFormNewTwo();
      } else {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _WelcomeText(),
                _RowButtons(),
                _EmailInputField(),
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
        );
      }
    });
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
                      decoration: InputDecoration(
                        hintText: "Adresse mail",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
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
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
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
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                      decoration: InputDecoration(
                        hintText: "Password verification",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
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
              onPressed: () => context.read<SignUpBloc>().add(FormSubmitted())),
        );
      },
    );
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
                    width: buttonsWidth,
                    height: 48,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xffB71C8C))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30.0,
                            width: 30.0,
                            margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                            child: Image(
                              image: AssetImage(
                                  "lib/assets/images/facebookIcon.jpg"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Text(
                            "Use Facebook",
                            style: TextStyle(
                              color: Color(0xffB71C8C),
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    width: buttonsWidth,
                    height: 48,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xffB71C8C))),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30.0,
                            width: 30.0,
                            margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                            child: Image(
                              image: AssetImage(
                                  "lib/assets/images/googleIcon.jpg"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Text(
                            "Use Google",
                            style: TextStyle(
                              color: Color(0xffB71C8C),
                            ),
                            maxLines: 1,
                          ),
                        ],
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
