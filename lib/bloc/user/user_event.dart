part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User newUser;
  ActivateUser(this.newUser);
}
