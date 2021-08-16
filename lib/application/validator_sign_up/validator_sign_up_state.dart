import 'package:equatable/equatable.dart';
import 'package:frontend/application/auth_models/code.dart';
import 'package:formz/formz.dart';

class ValidatorSignUpState extends Equatable {
  const ValidatorSignUpState({
    this.code = const Code.pure(),
    this.status = FormzStatus.pure,
    this.exceptionError,
  });

  final Code code;
  final FormzStatus status;
  final String exceptionError;

  @override
  List<Object> get props => [
    code,
    status,
    exceptionError
  ];

  ValidatorSignUpState copyWith({
    Code code,
    FormzStatus status,
    String error,
  }) {
    return ValidatorSignUpState(
      code: code ?? this.code,
      status: status ?? this.status,
      exceptionError: error ?? this.exceptionError,
    );
  }
}