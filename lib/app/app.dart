import 'package:flutter/material.dart';
import 'package:flutter_class/app/routes/app_routes.dart';
import 'package:flutter_class/views/dashboard_view.dart';

class App extends StatelessWidget {
const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Course",
      initialRoute: AppRoute.dashboardRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}