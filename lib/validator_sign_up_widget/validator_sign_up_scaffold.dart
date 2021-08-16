import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/validator_sign_up/validator_sign_up_bloc.dart';
import 'package:frontend/validator_sign_up_widget/validator_sign_up_form.dart';

class ValidatorSignUpScaffold extends StatelessWidget {
  const ValidatorSignUpScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Code'),
          elevation: 0,
        ),
        body: SafeArea(
          top: false,
          child: BlocProvider(
            create: (_) => ValidatorSignUpBloc(),
            child: ValidatorSignUpForm(),
          ),
        ));
  }
}
