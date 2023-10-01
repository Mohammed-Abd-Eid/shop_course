import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/pages/register/bloc/register_bloc.dart';

import '../pages/login/log_in/login_bloc.dart';
import '../pages/splash/bloc/welcome_bloc.dart';

class AppBlocProvider {
  static get allBloc => [
        BlocProvider(
          lazy: false,
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => RegisterBloc(),
        ),
      ];
}
