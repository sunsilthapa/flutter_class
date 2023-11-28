import 'package:flutter/material.dart';
import 'package:flutter_class/views/gridview/grid_view.dart';
import 'package:flutter_class/views/listview/dropdown_listview.dart';

class App extends StatelessWidget {
const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Course",
      home: GridViewScreen(),
      // initialRoute: AppRoute.containerRoute,
      // routes: AppRoute.getApplicationRoute(),
    );
  }
}