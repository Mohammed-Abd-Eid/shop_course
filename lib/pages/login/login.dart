import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/values/color.dart';
import 'package:school/common/widgets/text_widget.dart';
import 'package:school/pages/login/log_in/login_bloc.dart';
import 'package:school/pages/login/log_in/login_state.dart';
import 'package:school/pages/login/login_controller.dart';
import 'package:school/pages/login/widget/build_Button.dart';
import 'package:school/pages/login/widget/build_Third_Party.dart';
import 'package:school/pages/login/widget/forget_password.dart';
import 'package:school/pages/login/widget/login_widget.dart';
import 'package:school/pages/login/widget/text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Container(
          color: AppColors.primaryBackground,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.primaryBackground,
              appBar: buildAppBar(title: "Log In"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildThirdParty(context),
                    text14(text: "Or use your email account login"),
                    Container(
                      margin: EdgeInsets.only(top: 60.h),
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text14(text: "Email"),
                          buildTextField(
                            "Enter your email address",
                            TextInputType.emailAddress,
                            Icons.person,
                            (value) {
                              context.read<LoginBloc>().add(
                                    EmailEvent(value),
                                  );
                            },
                          ),
                          text14(text: "Password"),
                          buildTextField(
                            "Enter your Password",
                            TextInputType.visiblePassword,
                            Icons.lock,
                            (value) {
                              context.read<LoginBloc>().add(
                                    PasswordEvent(value),
                                  );
                            },
                          ),
                          forgetPass(),
                          SizedBox(height: 70.h),
                          buildButton(
                            AppColors.primaryElement,
                            "Log In",
                            () {
                              LoginController(context: context)
                                  .handelLogin("email");
                              LoginController(context: context)
                                  .handelLogin("password");
                            },
                            "Log In",
                          ),
                          SizedBox(height: 16.h),
                          buildButton(
                            AppColors.primaryBackground,
                            "Sign Up",
                            () {
                              Navigator.of(context).pushNamed('/register');
                            },
                            "Sign Up",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
