import 'package:flutter/material.dart';

class StackView extends StatefulWidget {
  const StackView({Key? key}) : super(key: key);

  @override
  _StackViewState createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.network(
              "https://imgs.search.brave.com/cu9Tj1j9X3ikCtsd7VDLKwbzrduMU4kQnzqpbvLIjtU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/YS1kcm9wLW9mLXBp/bmstYW5kLXllbGxv/dy1wYWludC1pbi13/YXRlci5qcGc_d2lk/dGg9MTAwMCZmb3Jt/YXQ9cGpwZyZleGlm/PTAmaXB0Yz0w"),
          const Positioned(
            bottom: 15,
            left: 1,
            child: Icon(Icons.facebook),
          ),
          const Positioned(
            top: 2,
            right: 4,
            child: Icon(
              Icons.edit,
              color: Colors.blue,
            ),
          ),
          const Positioned(
            bottom: 15,
            left: 35,
            child: Icon(Icons.email),
          ),
          // Positioned(
          //   bottom: -20,
          //   right: 400 / 2-50,
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.yellow,
          //     child: Text("I am second container"),
          //   ),
          // ),
        ],
      )),
    );
  }
}
