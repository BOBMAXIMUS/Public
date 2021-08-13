import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/common/auth_text_field.dart';
import '../application/login/login_cubit.dart';
import '../application/login/login_state.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status.isSubmissionFailure) {
            print('submission failure');
          } else if (state.status.isSubmissionSuccess) {
            print('success');
            Navigator.of(context).pushNamed('/teacherMainPages');
          }
        },
        builder: (context, state) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _WelcomeText(),
                    _GoBackButton(),
                    _RowButtons(),
                    _EmailInputField(),
                    _PasswordInputField(),
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
      padding: const EdgeInsets.only(bottom: 30.0, top: 30.0),
      child: Text(
        'Welcome to ARO!',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AuthTextField(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          hint: 'Email',
          key: const Key('loginForm_emailInput_textField'),
          keyboardType: TextInputType.emailAddress,
          error: '',
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
        );
      },
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30.0,
              width: 30.0,
              child: Image(
                image: AssetImage("lib/assets/images/mailIcon.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 200,
              child: AuthTextField(
                padding: EdgeInsets.all(0),
                hint: 'Password',
                isPasswordField: true,
                key: const Key('loginForm_passwordInput_textField'),
                keyboardType: TextInputType.text,
                error: '',
                onChanged: (password) =>
                    context.read<LoginCubit>().passwordChanged(password),
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
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: 20),
          child: CupertinoButton(
            padding: EdgeInsets.all(2.5),
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.white),
            ),
            disabledColor: Color(0xffB71C8C).withOpacity(0.6),
            color: Color(0xffB71C8C),
            onPressed: state.status.isValidated
                ? () => context.read<LoginCubit>().logInWithCredentials()
                : null,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 175.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
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
            width: 175.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
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
  }
}

class _GoBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
