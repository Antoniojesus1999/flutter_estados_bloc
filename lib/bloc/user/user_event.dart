part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User newUser;
  ActivateUser(this.newUser);
}

class ChangeUserAge extends UserEvent {
  final int age;
  ChangeUserAge(this.age);
}
