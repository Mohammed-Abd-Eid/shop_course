// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school/common/bloc_pro.dart';
import 'package:school/common/routes/pages.dart';

import 'package:firebase_core/firebase_core.dart';
import 'common/values/color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProvider.allBloc,
      child: ScreenUtilInit(builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppPage.generateRoute,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
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
