import 'dart:async';
import 'package:aro_repository/aro_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:frontend/auth_models/confirm_password.dart';
import 'package:frontend/auth_models/email.dart';
import 'package:frontend/auth_models/name.dart';
import 'package:frontend/auth_models/password.dart';
import 'package:formz/formz.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState());

  @override
  void onTransition(Transition<SignUpEvent, SignUpState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is NameChanged) {
      final name = Name.dirty(event.name);
      yield state.copyWith(
        name: name.valid ? name : Name.pure(),
        status: Formz.validate([
          name,
          state.email,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is EmailChanged) {
      final email = Email.dirty(event.email);
      yield state.copyWith(
        email: email.valid ? email : Email.pure(),
        status: Formz.validate([
          state.name,
          email,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is PasswordChanged) {
      final password = Password.dirty(event.password);
      final confirm = ConfirmPassword.dirty(
        password: password.value,
        value: state.confirmPassword?.value,
      );
      yield state.copyWith(
        password: password.valid ? password : Password.pure(),
        status: Formz.validate([
          state.name,
          state.email,
          password,
          confirm,
        ]),
      );
    } else if (event is ConfirmPasswordChanged) {
      final password = ConfirmPassword.dirty(
          password: state.password.value, value: event.confirmPassword);
      print('confirm is valid ${password.valid}');
      yield state.copyWith(
        confirmPassword: password.valid ? password : ConfirmPassword.pure(),
        status: Formz.validate([
          state.name,
          state.email,
          state.password,
          password,
        ]),
      );
    } else if (event is FormSubmitted) {
      AroRepository aro = AroRepository();
      if (!state.status.isValidated) return;
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      try {
        ///Tomar los estados y insertar al backend
        await aro.signup("ricardo2", "vasquez2", "rjvasquez1996@gmail.com", "Ricardo+123", "France", "+5493413393425", "Terminale", "fr");
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } on Exception {
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    }
  }
}
