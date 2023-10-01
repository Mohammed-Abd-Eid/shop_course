// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/common/widgets/flutter_toast.dart';
import 'package:school/pages/login/log_in/login_bloc.dart';

class LoginController {
  final BuildContext context;

  LoginController({required this.context});

  Future<void> handelLogin(String type) async {
    try {
      if (type == "email") {
        final state = context.read<LoginBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          toastInfo(msg: "Email is empty");
          return;
        }
        if (password.isEmpty) {
          toastInfo(msg: "password is empty");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credential.user == null) {
            toastInfo(msg: "user is Not Exist");
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "Not Varied");
          }
          var user = credential.user;
          if (user != null) {
            toastInfo(msg: "User exist");
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: "No user found for that email.");
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: "Wrong Password Provided for that user.");
          } else if (e.code == 'invalid-email') {
            toastInfo(msg: "invalid email format is wrong.");
          }
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
