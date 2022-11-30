part of 'login_bloc.dart';

// @immutable
class LoginState extends Equatable {
  const LoginState({
    ///The initial state of the bloc is pure meaning neither the inputs nor the form has been touched or interacted with.
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  final FormzStatus status;
  final Username username;
  final Password password;

  LoginState copyWith({
    FormzStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(

        ///if status is null, then take this.status
        status: status ?? this.status,
        username: username ?? this.username,
        password: password ?? this.password);
  }

  @override
  List<Object?> get props => [status, username, password];
}
