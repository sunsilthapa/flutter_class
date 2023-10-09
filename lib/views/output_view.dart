import 'package:flutter/material.dart';

class OutputView extends StatefulWidget {
  const OutputView({Key? key}) : super(key: key);

  @override
  _OutputViewState createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  @override
  Widget build(BuildContext context) {
    int result = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: SafeArea(
        child: Center(
          child: Text("Result is : $result "),
        ),
      ),
    );
  }
}
