import 'package:formz/formz.dart';

enum phoneError { empty, invalid }

class Phone extends FormzInput<String, phoneError> {
  const Phone.pure([String value = '']) : super.pure(value);
  const Phone.dirty([String value = '']) : super.dirty(value);

  static final RegExp _phoneRegExp = RegExp(
    '[0-9]{4}',
  );

  @override
  phoneError validator(String value) {
    if (value?.isNotEmpty == false) {
      return phoneError.empty;
    }
    return _phoneRegExp.hasMatch(value) ? null : phoneError.invalid;
  }
}
