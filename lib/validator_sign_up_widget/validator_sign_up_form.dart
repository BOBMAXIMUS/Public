import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/common/auth_text_field.dart';
import '../application/validator_sign_up/validator_sign_up_bloc.dart';
import '../application/validator_sign_up/validator_sign_up_state.dart';
import 'package:formz/formz.dart';

class ValidatorSignUpForm extends StatelessWidget {
  const ValidatorSignUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidatorSignUpBloc, ValidatorSignUpState>(
        listener: (context, state) {
          if (state.status.isSubmissionFailure) {
            print('submission failure');
          } else if (state.status.isSubmissionSuccess) {
            print('success');
            Navigator.of(context).pushNamed('/');
          }
        },
        builder: (context, state) => Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(38.0, 0, 38.0, 8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _ValidatorInputField(),
                    ],
                  ),
                ),
              ),
            ),
            state.status.isSubmissionInProgress
                ? Positioned(
              child: Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
            ) : Container(),
          ],
        )
    );
  }
}


class _ValidatorInputField extends StatelessWidget {
  const _ValidatorInputField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    String userId = '';
    if (arguments != null) userId =arguments['userId'];
    return BlocBuilder<ValidatorSignUpBloc, ValidatorSignUpState>(
      buildWhen: (previous, current) => previous.code != current.code,
      builder: (context, state) {
        return AuthTextField(
          hint: 'Codigo',
          key: const Key('loginForm_codeInput_textField'),
          keyboardType: TextInputType.text,
          error: '',
          onChanged: (code) => context.read<ValidatorSignUpBloc>().codeChanged(code,userId),
        );
      },
    );
  }
}

