import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/common/auth_text_field.dart';
import 'package:frontend/application/sign_up/sign_up_bloc.dart';
import 'package:frontend/application/sign_up/sign_up_event.dart';
import 'package:frontend/application/sign_up/sign_up_state.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/sign_up/sign_up_form_new.dart';
import 'package:frontend/sign_up/sign_up_scaffold.dart';

final double fieldWidth = 300;
final double fieldheight = 48;
final double buttonsWidth = 200;

class SignUpFormNewTwo extends StatelessWidget {
  const SignUpFormNewTwo({Key key}) : super(key: key);

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
                    _NameInputField(),
                    _LastNameInputField(),
                    _PhoneInputField(),
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

class _GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    myDialog(Widget content, BuildContext context) {
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

    return Container(
      padding: EdgeInsets.only(left: 53.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          myDialog(SignUpScaffold(), context);
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
