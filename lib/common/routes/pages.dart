import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/common/routes/named.dart';
import 'package:school/pages/application/main_page.dart';
import 'package:school/pages/login/log_in/login_bloc.dart';
import 'package:school/pages/login/login.dart';
import 'package:school/pages/register/bloc/register_bloc.dart';
import 'package:school/pages/register/register.dart';
import 'package:school/pages/splash/bloc/welcome_bloc.dart';
import 'package:school/pages/splash/welcome.dart';

class AppPage {
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutes.initial,
        page: const Welcome(),
        bloc: BlocProvider(create: (_) => WelcomeBloc()),
      ),
      PageEntity(
        route: AppRoutes.login,
        page: const SignIn(),
        bloc: BlocProvider(create: (_) => LoginBloc()),
      ),
      PageEntity(
        route: AppRoutes.register,
        page: const Register(),
        bloc: BlocProvider(create: (_) => RegisterBloc()),
      ),
      PageEntity(
        route: AppRoutes.mainPage,
        page: const MainPage(),
        bloc: BlocProvider(create: (_) => WelcomeBloc()),
      ),
    ];
  }

  static MaterialPageRoute generateRoute(RouteSettings settings) {
    if (settings.name != null) {
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }

    return MaterialPageRoute(
        builder: (_) => const SignIn(), settings: settings);
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({
    required this.route,
    required this.page,
    required this.bloc,
  });
}
