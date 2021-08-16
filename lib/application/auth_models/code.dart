import 'package:formz/formz.dart';

enum CodeError { empty, invalid }

class Code extends FormzInput<String, CodeError> {
  const Code.pure([String value = '']) : super.pure(value);
  const Code.dirty([String value = '']) : super.dirty(value);
  static final _nameRegExp = RegExp(
      r'^[A-Za-z\d@$!%*?&+]{8,}$'
  );
  @override
  CodeError validator(String value) {
    if (value?.isNotEmpty == false) {
      return CodeError.empty;
    }
    return _nameRegExp.hasMatch(value) ? null : CodeError.invalid;
  }
}
