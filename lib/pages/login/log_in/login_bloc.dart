// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'login_state.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  void _emailEvent(EmailEvent event, Emitter<LoginState> emit) {
    emit(state.copywith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<LoginState> emit) {
    emit(state.copywith(password: event.password));
  }
}
