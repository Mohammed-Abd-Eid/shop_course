part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {
  const RegisterEvent();
}

class UserEvent extends RegisterEvent {
  final String user;

  const UserEvent(this.user);
}

class EmailReEvent extends RegisterEvent {
  final String email;

  const EmailReEvent(this.email);
}

class PasswordReEvent extends RegisterEvent {
  final String password;

  const PasswordReEvent(this.password);
}

class ConfigPasswordEvent extends RegisterEvent {
  final String configPassword;

  const ConfigPasswordEvent(this.configPassword);
}
