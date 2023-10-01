// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super((const RegisterState())) {
    on<UserEvent>(_userEvent);
    on<EmailReEvent>(_emailEvent);
    on<PasswordReEvent>(_passwordEvent);
    on<ConfigPasswordEvent>(_configPasswordEvent);
  }

  void _userEvent(UserEvent event, Emitter<RegisterState> emit) {
    emit(state.copywith(user: event.user));
  }

  void _emailEvent(EmailReEvent event, Emitter<RegisterState> emit) {
    emit(state.copywith(email: event.email));
  }

  void _passwordEvent(PasswordReEvent event, Emitter<RegisterState> emit) {
    emit(state.copywith(password: event.password));
  }

  void _configPasswordEvent(
      ConfigPasswordEvent event, Emitter<RegisterState> emit) {
    emit(state.copywith(configPassword: event.configPassword));
  }
}
