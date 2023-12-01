import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        leading: const Icon(Icons.calculate_rounded),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: const [],
      ),
    ));
  }
}
