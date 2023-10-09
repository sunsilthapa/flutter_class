import 'package:flutter/material.dart';
import 'package:flutter_class/app/routes/app_routes.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({Key? key}) : super(key: key);

  @override
  _ArithmeticViewState createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {

  final key =  GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add(){
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

     int result = first + second;
     Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }

  sub(){
    int first = int.parse(firstController.text);
    int second= int.parse(secondController.text);

    int result = first - second;
    Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" Arithmetic View")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: key,
            child: Column(children: [
              TextFormField(
                controller: firstController,
                decoration: const InputDecoration(
                  labelText: " First Number"
                ),
              ),
              TextFormField(
                controller: secondController,
                decoration: const InputDecoration(
                  labelText: " Second Number"
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  if(key.currentState!.validate()){
                    add();
                  }
                  Navigator.pushNamed(context, AppRoute.outputRoute, arguments: result);
                }, child:const Text("Addition"),) ,
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child:const Text("Subtraction"),) ,
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child:const Text("Multiplication"),) ,
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child:const Text("Division"),) ,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
