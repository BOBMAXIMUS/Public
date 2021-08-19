import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class NameChanged extends SignUpEvent {
  const NameChanged({
    @required this.name
  });

  final String name;

  @override
  List<Object> get props => [name];
}

class LastNameChanged extends SignUpEvent {
  const LastNameChanged({
    @required this.lastName
  });

  final String lastName;

  @override
  List<Object> get props => [lastName];
}

class TypeUserChanged extends SignUpEvent {
  const TypeUserChanged({
    @required this.typeUser
  });

  final String typeUser;

  @override
  List<Object> get props => [typeUser];
}

class CountryChanged extends SignUpEvent {
  const CountryChanged({
    @required this.country
  });

  final String country;

  @override
  List<Object> get props => [country];
}

class PhoneChanged extends SignUpEvent {
  const PhoneChanged({
    @required this.phone
  });

  final String phone;

  @override
  List<Object> get props => [phone];
}

class CodeChanged extends SignUpEvent {
  const CodeChanged({
    @required this.code
  });

  final String code;

  @override
  List<Object> get props => [code];
}


class DegreeChanged extends SignUpEvent {
  const DegreeChanged({
    @required this.degree
  });

  final String degree;

  @override
  List<Object> get props => [degree];
}

class LanguageChanged extends SignUpEvent {
  const LanguageChanged({
    @required this.language
  });

  final String language;

  @override
  List<Object> get props => [language];
}

class EmailChanged extends SignUpEvent {
  const EmailChanged({
    @required this.email,
  });

  final String email;

  @override
  List<Object> get props => [email];
}

class PasswordChanged extends SignUpEvent {
  const PasswordChanged({
    @required this.password
  });

  final String password;

  @override
  List<Object> get props => [password];
}

class ConfirmPasswordChanged extends SignUpEvent {
  const ConfirmPasswordChanged({
    @required this.confirmPassword,
  });

  final String confirmPassword;

  @override
  List<Object> get props => [confirmPassword];
}

class FormSubmitted extends SignUpEvent { }