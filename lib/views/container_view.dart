import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
const ContainerView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height:double.infinity,
          child: Text("Hello"),
        ),
      )
    );
  }
}