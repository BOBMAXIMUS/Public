import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/pages/all_view/main_login_page.dart';
import 'package:frontend/pages/all_view/services_view_login_page.dart';
import 'package:frontend/pages/student_view/custom_student_appbar_wide.dart';
import 'package:frontend/pages/student_view/student_main_view.dart';

import '../application/login/login_cubit.dart';
import 'login_form.dart';

class LoginScaffold extends StatelessWidget {
  const LoginScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Login'),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (_) => LoginCubit(),
          child: MainLoginPage(), //LoginForm(),
        ),
      ),
    );
  }
}
