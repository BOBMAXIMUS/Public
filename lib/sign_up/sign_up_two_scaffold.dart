import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/sign_up/sign_up_bloc.dart';
import 'package:frontend/sign_up/sign_up_form_two.dart';

class SignUpTwoScaffold extends StatelessWidget {
  const SignUpTwoScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500.0,
        child: BlocProvider(
          create: (_) => SignUpBloc(),
          //child: SignUpForm(),
          child: SignUpFormNewTwo(),
        ));
  }
}
