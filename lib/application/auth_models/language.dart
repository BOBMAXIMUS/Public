import 'package:formz/formz.dart';

enum languageError { empty, invalid }

class Language extends FormzInput<String, languageError> {
  const Language.pure([String value = '']) : super.pure(value);
  const Language.dirty([String value = '']) : super.dirty(value);

  static final RegExp _languageRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
 languageError validator(String value) {
    if (value?.isNotEmpty == false) {
      return languageError.empty;
    }
    return _languageRegExp.hasMatch(value) ? null : languageError.invalid;
  }
}
