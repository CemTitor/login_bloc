import 'package:formz/formz.dart';

enum UsernameValidationError {
  empty,
  notLongEnough,
  notSpecialCharacters,
  notNumbers,
  notLetters
}

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String value) {
    if (value.isEmpty)
      return UsernameValidationError.empty;
    else if (value.length < 3)
      return UsernameValidationError.notLongEnough;
    else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value))
      return UsernameValidationError.notSpecialCharacters;
    else if (!RegExp(r'[0-9]').hasMatch(value))
      return UsernameValidationError.notNumbers;
    else if (!RegExp(r'[a-zA-Z]').hasMatch(value))
      return UsernameValidationError.notLetters;
    else
      return null;
  }
}
