import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamechallange/presentation/screens/dashboard/cubit/game_cubit.dart';
import 'package:gamechallange/presentation/screens/dashboard/dashboard_screen.dart';

import 'core/constants/app_constatns.dart';
import 'core/di/di.dart';
import 'domain/usecase/game_usecase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<GameCubit>()..fetchGames(const GameParams())),
      ],
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: getAppRoutes().getRoutes,

        home: const DashboardScreen(),
        builder: (context, child) {
          // textScaleFactor to prevent font size change in application
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
      ),
    );
  }
  // AppRoutes getAppRoutes() {
  //   return AppRoutes();
  // }
}
