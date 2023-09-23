import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/pages/home/home_page.dart';
import 'package:school/pages/login/login.dart';
import 'package:school/pages/splash/bloc/welcome_bloc.dart';
import 'package:school/pages/splash/welcome.dart';

import 'common/values/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        )
      ],
      child: ScreenUtilInit(builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Welcome(),
          routes: {
            "myHomePage": (context) => const HomePage(),
            "singIn": (context) => const SignIn(),
          },
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: AppColors.primaryBackground,
              centerTitle: true,
            ),
          ),
        );
      }),
    );
  }
}
