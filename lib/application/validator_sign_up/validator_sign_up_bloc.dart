import 'dart:async';
import 'package:aro_repository/aro_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:frontend/application/auth_models/code.dart';

import 'package:formz/formz.dart';
import 'validator_sign_up_state.dart';

class ValidatorSignUpBloc extends Cubit<ValidatorSignUpState> {
  ValidatorSignUpBloc() : super(ValidatorSignUpState());

  void codeChanged(String value,String userId) {
    final code = Code.dirty(value);
    if(code.value.toString().length > 3){
      codeSend(code.toString(),userId);
    }else {
      emit(state.copyWith(
        code: code,
        status: Formz.validate([
          code,
          state.code
        ]),
      ));
    }
  }


  Future<void> codeSend(String codeSend,userId) async {
    AroRepository aro = AroRepository();
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      aro.validatorcode(codeSend,userId);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on Exception catch (e) {
      emit(state.copyWith(status: FormzStatus.submissionFailure, error: e.toString()));
    }
  }
}