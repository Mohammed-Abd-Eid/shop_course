import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/pages/splash/bloc/welcome_bloc.dart';
import 'package:school/pages/splash/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeBloc(),
      child: ScreenUtilInit(builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Welcome(),
        );
      }),
    );
  }
}
