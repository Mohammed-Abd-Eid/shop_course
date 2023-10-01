// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/common/widgets/flutter_toast.dart';

import 'bloc/register_bloc.dart';

class RegisterController {
  final BuildContext context;

  RegisterController({required this.context});

  Future<void> handelRegister() async {
    try {

        final state = context.read<RegisterBloc>().state;
        String userName = state.user;
        String emailAddress = state.email;
        String password = state.password;
        String configPassword = state.configPassword;
        if (userName.isEmpty) {
          toastInfo(msg: "User is empty");
          return;

        }
        if (emailAddress.isEmpty) {
          toastInfo(msg: "Email is empty");
          return;

        }
        if (password.isEmpty) {
          toastInfo(msg: "password is empty");
          return;

        }
        if (configPassword.isEmpty) {
          toastInfo(msg: "config Password is empty");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credential.user != null) {
            await credential.user?.sendEmailVerification();
            await credential.user?.updateDisplayName(userName);
            toastInfo(msg: "Email Success");
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

    } catch (e) {
      print(e.toString());
    }
  }
}
