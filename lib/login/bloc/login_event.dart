part of 'login_bloc.dart';

// @immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

///notifies the bloc that the username has been modified.
class LoginUsernameChanged extends LoginEvent {
  final String username;
  const LoginUsernameChanged(this.username);

  @override
  List<Object> get props => [username];
}

///notifies the bloc that the password has been modified.
class LoginPasswordChanged extends LoginEvent {
  final String password;

  const LoginPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

///notifies the bloc that the form has been submitted.
class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}
