import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData( 
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.grey[200],
      fontFamily: "Montserrat Bold",
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
                fontFamily: "OpenSans Bold",
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500),
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
      ),
      );
}
