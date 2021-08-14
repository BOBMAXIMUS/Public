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

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.status.isSubmissionFailure) {
            print('submission failure');
          } else if (state.status.isSubmissionSuccess) {
            print('success');
            Navigator.of(context).pushNamed('/login/validator',arguments: {'userId': state.userId});
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(38.0, 0, 38.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _NameInputField(),
              _LastNameInputField(),
              _EmailInputField(),
              _PasswordInputField(),
              _ConfirmPasswordInput(),
              _CountryInputField(),
              _PhoneInputField(),
              _DegreeInputField(),
              _LanguageInputField(),
              _TypeUserInputField(),
              _SignUpButton(),
            ],
          ),
        ));
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
            onChanged: (lastName) =>
                context.read<SignUpBloc>().add(LastNameChanged(lastName: lastName)),
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
            onChanged: (typeUser) =>
                context.read<SignUpBloc>().add(TypeUserChanged(typeUser: typeUser)),
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
            onChanged: (country) =>
                context.read<SignUpBloc>().add(CountryChanged(country: country)),
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
            onChanged: (language) =>
                context.read<SignUpBloc>().add(LanguageChanged(language: language)),
          ),
        );
      },
    );
  }
}
class _EmailInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: AuthTextField(
            hint: 'Email',
            key: const Key('signUpForm_emailInput_textField'),
            isRequiredField: true,
            keyboardType: TextInputType.emailAddress,
            onChanged: (email) =>
                context.read<SignUpBloc>().add(EmailChanged(email: email)),
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
            onPressed: () => context.read<SignUpBloc>().add(FormSubmitted())
          ),
        );
      },
    );
  }
}
