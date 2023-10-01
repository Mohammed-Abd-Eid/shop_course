part of 'register_bloc.dart';

@immutable
class RegisterState {
  final String user;
  final String email;
  final String password;
  final String configPassword;

  const RegisterState(
      {this.user = "",
      this.email = "",
      this.password = "",
      this.configPassword = ""});

  RegisterState copywith({
    String? user,
    String? email,
    String? password,
    String? configPassword,
  }) {
    return RegisterState(
      user: user ?? this.user,
      email: email ?? this.email,
      password: password ?? this.password,
      configPassword: configPassword ?? this.configPassword,
    );
  }
}
