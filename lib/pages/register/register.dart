import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/pages/register/bloc/register_bloc.dart';
import 'package:school/pages/register/register_controller.dart';

import '../../common/values/color.dart';
import '../../common/widgets/text_widget.dart';
import '../login/widget/build_Button.dart';
import '../login/widget/login_widget.dart';
import '../login/widget/text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Container(
          color: AppColors.primaryBackground,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.primaryBackground,
              appBar: buildAppBar(title: "Sign Up"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 27.h),
                    text14(text: "Enter your details below & free Sign up"),
                    Container(
                      margin: EdgeInsets.only(top: 40.h),
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text14(text: "User Name"),
                          buildTextField(
                            "Enter your user name",
                            TextInputType.emailAddress,
                            Icons.person,
                            (value) {
                              context.read<RegisterBloc>().add(
                                    UserEvent(value),
                                  );
                            },
                          ),
                          text14(text: "Email"),
                          buildTextField(
                            "Enter your email address",
                            TextInputType.emailAddress,
                            Icons.person,
                            (value) {
                              context.read<RegisterBloc>().add(
                                    EmailReEvent(value),
                                  );
                            },
                          ),
                          text14(text: "Password"),
                          buildTextField(
                            "Enter your Password",
                            TextInputType.visiblePassword,
                            Icons.lock,
                            (value) {
                              context.read<RegisterBloc>().add(
                                    PasswordReEvent(value),
                                  );
                            },
                          ),
                          text14(text: "Confirm Password"),
                          buildTextField(
                            "Enter your Confirm Password",
                            TextInputType.visiblePassword,
                            Icons.lock,
                            (value) {
                              context.read<RegisterBloc>().add(
                                    ConfigPasswordEvent(value),
                                  );
                            },
                          ),
                          text14(
                            text:
                                "By creating an account you have to agree with our them & condication",
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 40.h),
                          buildButton(
                            AppColors.primaryElement,
                            "Sign Up",
                            () {
                              RegisterController(context: context)
                                  .handelRegister();
                            },
                            "Log In",
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
