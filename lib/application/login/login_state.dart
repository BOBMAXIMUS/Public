import 'package:aro_api/aro_api.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:frontend/application/auth_models/email.dart';
import 'package:frontend/application/auth_models/password.dart';


class LoginState extends Equatable {
  const LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.user,
    this.exceptionError,
  });

  final Email email;
  final Password password;
  final FormzStatus status;
  final String exceptionError;
  final User user;

  @override
  List<Object> get props => [email, password, user, status, exceptionError];

  LoginState copyWith({
    Email email,
    Password password,
    FormzStatus status,
    User user,
    String error,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      user: user ?? this.user,
      exceptionError: error ?? this.exceptionError,
    );
  }
}