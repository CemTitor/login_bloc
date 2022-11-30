import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty,
  notLongEnough,
  notSpecialCharacters,
  notNumbers,
  notLetters,
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    } else if (value.length < 8) {
      return PasswordValidationError.notLongEnough;
    } else if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return PasswordValidationError.notSpecialCharacters;
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      return PasswordValidationError.notNumbers;
    } else if (!value.contains(RegExp(r'[a-zA-Z]'))) {
      return PasswordValidationError.notLetters;
    }
    return null;
  }
}
