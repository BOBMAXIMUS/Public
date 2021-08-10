import 'package:formz/formz.dart';

enum countryError { empty, invalid }

class Country extends FormzInput<String, countryError> {
  const Country.pure([String value = '']) : super.pure(value);
  const Country.dirty([String value = '']) : super.dirty(value);

  static final RegExp _countryRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  countryError validator(String value) {
    if (value?.isNotEmpty == false) {
      return countryError.empty;
    }
    return _countryRegExp.hasMatch(value) ? null : countryError.invalid;
  }
}
