
import 'package:flutter_class/views/arithmetic_view.dart';
import 'package:flutter_class/views/dashboard_view.dart';
import 'package:flutter_class/views/image_view.dart';
import 'package:flutter_class/views/listview/student_detail_view.dart';
import 'package:flutter_class/views/output_view.dart';

import '../../views/container_view.dart';
import '../../views/ramdom_no_view.dart';

class AppRoute{
  AppRoute._();

  static const String studentViewRoute = '/';
  static const String dashboardRoute = '/dashboard';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/randomNo';
  static const String navigationRoute = '/navigation';
  static const String imageViewRoute = '/image';
  static const String outputViewRoute = '/output';

  static getApplicationRoute(){
    return{
      // containerRoute: (context) => const ContainerView(),
      dashboardRoute: (context) => const DashboardView(),
      arithmeticRoute: (context) => const ArithmeticView(),
      outputRoute: (context) => const OutputView(),
      randomRoute: (context) => const RandomNumberGame(),
      imageViewRoute: (context) => const ImageView(),
      studentViewRoute: (context) => const StudentDetailView(),
      outputViewRoute: (context) => const OutputView(),
    };
  }
}