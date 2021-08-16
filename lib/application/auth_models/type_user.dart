import 'package:formz/formz.dart';

enum TypeUserError { empty, invalid }

class TypeUser extends FormzInput<String, TypeUserError> {
  const TypeUser.pure([String value = '']) : super.pure(value);
  const TypeUser.dirty([String value = '']) : super.dirty(value);

  static final RegExp _lastnameRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  TypeUserError validator(String value) {
    if (value?.isNotEmpty == false) {
      return TypeUserError.empty;
    }
    return _lastnameRegExp.hasMatch(value) ? null : TypeUserError.invalid;
  }
}
