import 'package:aro_repository/aro_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:frontend/auth_models/email.dart';
import 'package:frontend/auth_models/password.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([
        email,
        state.password
      ]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([
        state.email,
        password
      ]),
    ));
  }

  Future<void> logInWithCredentials() async {
    AroRepository aro = AroRepository();
    const email = 'josevalderrama18@gmail.com';
    const password = 'joseJose1+';

    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      ///Tomar los estados y insertar al backend
      await aro.login(email, password);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on Exception catch (e) {
      emit(state.copyWith(status: FormzStatus.submissionFailure, error: e.toString()));
    }
  }
}