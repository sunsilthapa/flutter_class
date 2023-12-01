import 'package:flutter/material.dart';
import 'package:flutter_class/app/routes/app_routes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AppRoute.arithmeticRoute);
                  },
                  child: const Text("Arithmetic View")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, AppRoute.containerRoute);
                  },
                  child: const Text("Random No")),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}