import 'package:formz/formz.dart';

enum phoneError { empty, invalid }

class Phone extends FormzInput<String, phoneError> {
  const Phone.pure([String value = '']) : super.pure(value);
  const Phone.dirty([String value = '']) : super.dirty(value);

  static final RegExp _phoneRegExp = RegExp(
    r'^\+[1-9]{1}[0-9]{3,14}$',
  );

  @override
  phoneError validator(String value) {
    if (value?.isNotEmpty == false) {
      return phoneError.empty;
    }
    return _phoneRegExp.hasMatch(value) ? null : phoneError.invalid;
  }
}
