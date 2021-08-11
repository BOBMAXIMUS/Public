import 'package:formz/formz.dart';

enum degreeError { empty, invalid }

class Degree extends FormzInput<String, degreeError> {
  const Degree.pure([String value = '']) : super.pure(value);
  const Degree.dirty([String value = '']) : super.dirty(value);

  static final RegExp _degreeRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
 degreeError validator(String value) {
    if (value?.isNotEmpty == false) {
      return degreeError.empty;
    }
    return _degreeRegExp.hasMatch(value) ? null : degreeError.invalid;
  }
}
