import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_class/app/routes/app_routes.dart';
import 'package:flutter_class/views/dashboard_view.dart';

import 'login_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    Future.delayed( const Duration(seconds: 3), (){
          Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const DashboardView()));
      // Navigator.pushNamed(context, AppRoute.dashboardRoute);
    });
    super.initState();

    // Timer(const Duration(seconds: 4), () {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const DashboardView()));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
