import 'package:equatable/equatable.dart';
import 'package:frontend/application/auth_models/confirm_password.dart';
import 'package:frontend/application/auth_models/email.dart';
import 'package:frontend/application/auth_models/name.dart';
import 'package:frontend/application/auth_models/password.dart';
import 'package:frontend/application/auth_models/last_name.dart';
import 'package:frontend/application/auth_models/country.dart';
import 'package:frontend/application/auth_models/phone.dart';
import 'package:frontend/application/auth_models/degree.dart';
import 'package:frontend/application/auth_models/language.dart';
import 'package:formz/formz.dart';

class SignUpState extends Equatable {
  const SignUpState({
    this.name = const Name.pure(),
    this.lastName = const LastName.pure(),
    this.country = const Country.pure(),
    this.phone = const Phone.pure(),
    this.degree = const Degree.pure(),
    this.language = const Language.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    this.status = FormzStatus.pure,
  });

  final Name name;
  final LastName lastName;
  final Country country;
  final Phone phone;
  final Degree degree;
  final Language language;
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final FormzStatus status;

  @override
  List<Object> get props => [
    name,
    lastName,
    country,
    phone,
    degree,
    language,
    email,
    password,
    confirmPassword,
    status
  ];

  SignUpState copyWith({
    Name name,
    LastName lastName,
    Country country,
    Phone phone,
    Degree degree,
    Language language,
    Email email,
    Password password,
    ConfirmPassword confirmPassword,
    FormzStatus status,
  }) {
    return SignUpState(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      country: country ?? this.country,
      phone: phone ?? this.phone,
      degree: degree ?? this.degree,
      language: language ?? this.language,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      status: status ?? this.status,
    );
  }
}