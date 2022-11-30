import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:login_bloc/app.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  runApp(
    App(
      ///We are INJECTING a SINGLE INSTANCE of the AuthenticationRepository and UserRepository into the App widget
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
