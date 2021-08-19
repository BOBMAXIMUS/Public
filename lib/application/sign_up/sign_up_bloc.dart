import 'dart:async';
import 'package:aro_repository/aro_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:frontend/application/auth_models/confirm_password.dart';
import 'package:frontend/application/auth_models/email.dart';
import 'package:frontend/application/auth_models/name.dart';
import 'package:frontend/application/auth_models/last_name.dart';
import 'package:frontend/application/auth_models/password.dart';
import 'package:frontend/application/auth_models/country.dart';
import 'package:frontend/application/auth_models/phone.dart';
import 'package:frontend/application/auth_models/degree.dart';
import 'package:frontend/application/auth_models/language.dart';
import 'package:formz/formz.dart';
import 'package:frontend/application/auth_models/type_user.dart';
import 'sign_up_event.dart';
import 'package:frontend/application/sign_up/sign_up_state.dart';

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
          state.lastName,
          state.typeUser,
          state.country,
          state.phone,
          state.degree,
          state.language,
          state.email,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is LastNameChanged) {
      final lastName = LastName.dirty(event.lastName);
      yield state.copyWith(
        lastName: lastName.valid ? lastName : LastName.pure(),
        status: Formz.validate([
          state.name,
          lastName,
          state.typeUser,
          state.email,
          state.country,
          state.phone,
          state.degree,
          state.language,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is TypeUserChanged) {
      final typeUser = TypeUser.dirty(event.typeUser);
      yield state.copyWith(
        typeUser: typeUser.valid ? typeUser : TypeUser.pure(),
        status: Formz.validate([
          state.name,
          state.lastName,
          typeUser,
          state.email,
          state.country,
          state.phone,
          state.degree,
          state.language,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is CountryChanged) {
      final country = Country.dirty(event.country);
      yield state.copyWith(
        country: country.valid ? country : Country.pure(),
        status: Formz.validate([
          state.name,
          state.lastName,
          state.typeUser,
          state.email,
          country,
          state.phone,
          state.degree,
          state.language,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is PhoneChanged) {
      final phone = Phone.dirty(event.phone);
      yield state.copyWith(
        phone: phone.valid ? phone : Phone.pure(),
        status: Formz.validate([
          state.name,
          state.lastName,
          state.typeUser,
          state.email,
          state.country,
          phone,
          state.degree,
          state.language,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is DegreeChanged) {
      final degree = Degree.dirty(event.degree);
      yield state.copyWith(
        degree: degree.valid ? degree : Degree.pure(),
        status: Formz.validate([
          state.name,
          state.lastName,
          state.typeUser,
          state.email,
          state.country,
          state.phone,
          degree,
          state.language,
          state.password,
          state.confirmPassword,
        ]),
      );
    } else if (event is LanguageChanged) {
      final language = Language.dirty(event.language);
      yield state.copyWith(
        language: language.valid ? language : Language.pure(),
        status: Formz.validate([
          state.name,
          state.lastName,
          state.typeUser,
          state.email,
          state.country,
          state.phone,
          state.degree,
          language,
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
          state.lastName,
          state.typeUser,
          email,
          state.country,
          state.phone,
          state.degree,
          state.language,
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
          state.lastName,
          state.typeUser,
          state.email,
          state.country,
          state.phone,
          state.degree,
          state.language,
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
          state.lastName,
          state.typeUser,
          state.email,
          state.country,
          state.phone,
          state.degree,
          state.language,
          state.password,
          password,
        ]),
      );
    } else if (event is FormSubmitted) {
      AroRepository aro = AroRepository();
      if (state.email.valid && state.password.valid &&
          state.confirmPassword.valid && state.viewnumber == 1) {
        yield state.copyWith(viewnumber: 2);
      } else
      if (state.name.valid && state.lastName.valid && state.phone.valid &&
          state.viewnumber == 2) {
        yield state.copyWith(viewnumber: 3);
      }else
      if (
          state.viewnumber == 3) {
        String id = await aro.signup(
            state.name.value,
            state.lastName.value,
            state.email.value,
            state.password.value,
            "France",
            state.phone.value,
            "Terminale",
            "fr",
            state.typeUser.value);
        await aro.validatoremail(id);
        yield state.copyWith(viewnumber: 4,userId: id);
      }
      else {
        try {
        if (state.userId.isNotEmpty) {
          await aro.validatorcode('',state.userId);
        yield state.copyWith(
            status: FormzStatus.submissionSuccess);
        }
        else {
          yield state.copyWith(status: FormzStatus.submissionFailure);
        }
      } on Exception {
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    }
  }
  }
}
