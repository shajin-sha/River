// Flutter app theme

import 'package:flutter/material.dart';
import 'package:river/const/color_const.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        primarySwatch: Colors.grey,
        colorScheme: const ColorScheme.light(primary: Colors.grey, secondary: Colors.grey),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.only(left: 30, right: 20, top: 20, bottom: 20),
          fillColor: Color.fromARGB(255, 235, 235, 235),
          hintStyle: TextStyle(color: ColorConst.primaryColor),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.transparent),
            gapPadding: 4,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.transparent),
            gapPadding: 4,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 4,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.transparent),
            gapPadding: 4,
          ),
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: const ColorScheme.light(primary: ColorConst.primaryColor, secondary: Colors.grey),
          focusColor: Colors.grey.shade200,
          buttonColor: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
      );
}
