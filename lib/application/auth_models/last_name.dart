import 'package:formz/formz.dart';

enum LastNameError { empty, invalid }

class LastName extends FormzInput<String, LastNameError> {
  const LastName.pure([String value = '']) : super.pure(value);
  const LastName.dirty([String value = '']) : super.dirty(value);

  static final RegExp _lastnameRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  LastNameError validator(String value) {
    if (value?.isNotEmpty == false) {
      return LastNameError.empty;
    }
    return _lastnameRegExp.hasMatch(value) ? null : LastNameError.invalid;
  }
}
