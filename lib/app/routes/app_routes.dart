// import 'dart:js';

import 'package:flutter_class/views/arithmetic_view.dart';
import 'package:flutter_class/views/dashboard_view.dart';
import 'package:flutter_class/views/output_view.dart';

class AppRoute{
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/randomNo';

  static getApplicationRoute(){
    return{
      dashboardRoute: (context) => const DashboardView(),
      arithmeticRoute: (context) => const ArithmeticView(),
      outputRoute: (context) => const OutputView(),
      randomRoute: (context) => const RandomNumberGame()
    };
  }
}