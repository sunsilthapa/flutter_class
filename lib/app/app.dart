import 'package:flutter/material.dart';
import 'package:flutter_class/app/theme/theme_data.dart';
import 'package:flutter_class/views/dashboard_view.dart';
import 'package:flutter_class/views/splash_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Course",
      home: const SplashScreenView(),
      // initialRoute: AppRoute.stackViewRoute,
      // routes: AppRoute.getApplicationRoute(),
      theme: getApplicationTheme(),
    );
  }
}
