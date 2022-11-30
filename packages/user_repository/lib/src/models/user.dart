///Note: package:equatable is used to enable VALUE COMPARISONS of the User object.
import 'package:equatable/equatable.dart';

///The user_repository will be responsible for the USER DOMAIN and will EXPOSE APIs to interact with the current user.
class User extends Equatable {
  const User(this.id);

  final String id;

  @override
  List<Object> get props => [id];

  static const empty = User('-');
}
