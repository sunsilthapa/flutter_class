import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center(
          child: ClipRect(
            child: Image.asset('assets/images/house2.jpeg')),
        ),
      ),
    );
  }
}
